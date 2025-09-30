#!/usr/bin/env bash

set -e

export DOCKER_BUILDKIT=1
docker run --privileged --rm tonistiigi/binfmt --install all
DRY_RUN=false

# Parse flags
while [[ $# -gt 0 ]]; do
  case "$1" in
    --dry-run) DRY_RUN=true ;;
    *) echo "❌ Unknown option: $1"; exit 1 ;;
  esac
  shift
done

# set timestamp
TIMESTAMP=$(date +%Y%m%d%H%M%S)

# Configuration
MATRIX_FILE="./src/versions-matrix.json"
RELEASES_FILE="./src/releases.json"
TEMPLATE_FILE="./src/Dockerfile.tpl"
NODE_TEMPLATE_FILE="./src/Dockerfile-node.tpl"
BASE_DIST_DIR="./dist"
DIST_DIR="${BASE_DIST_DIR}/${TIMESTAMP}"
REPO="ordinov/laravel"

# Read suffixes
BASE_SUFFIX=$(jq -r '.base' "$RELEASES_FILE")
NODE_SUFFIX=$(jq -r '.node' "$RELEASES_FILE")

[[ -z "$BASE_SUFFIX" || -z "$NODE_SUFFIX" ]] && {
  echo "❌ Invalid or missing suffix in releases.json"
  exit 1
}

# Prepare directories
rm -rf "$DIST_DIR"
mkdir -p "$DIST_DIR" "./logs" "./bake/$TIMESTAMP"

# Log setup
JSON_FILE="./logs/build-${TIMESTAMP}.json"
echo "[]" > "$JSON_FILE"

write_group_log() { :; }

generate_docker_bake_file() {
  local bake_file="./bake/$TIMESTAMP/docker-bake.hcl"
  echo 'group "default" {' > "$bake_file"
  echo '  targets = [' >> "$bake_file"

  jq -c '.[]' "$JSON_FILE" | while read -r entry; do
    title=$(echo "$entry" | jq -r '.title' | sed 's/[^a-zA-Z0-9]/_/g')
    echo "    \"$title\"," >> "$bake_file"
  done

  echo '  ]' >> "$bake_file"
  echo '}' >> "$bake_file"
  echo >> "$bake_file"

  jq -c '.[]' "$JSON_FILE" | while read -r entry; do
    title=$(echo "$entry" | jq -r '.title')
    target_name=$(echo "$title" | sed 's/[^a-zA-Z0-9]/_/g')
    dockerfile_tag=${title##*:}
    dockerfile_path="$DIST_DIR/${dockerfile_tag}.Dockerfile"
    tags=$(echo "$entry" | jq -r '.tags[]' | jq -R . | jq -s -c '.')

    # Determina la versione PHP dal nome file/tag
    php_version=$(echo "$dockerfile_tag" | grep -oP 'php\K[0-9]+' | head -n1)
    # Imposta piattaforme sicure per tutte le versioni
    platforms="[\"linux/amd64\",\"linux/arm64\",\"linux/arm/v7\",\"linux/386\",\"linux/ppc64le\",\"linux/s390x\",\"linux/mips64le\"]"

    echo "target \"$target_name\" {" >> "$bake_file"
    echo "  context = \".\"" >> "$bake_file"
    echo "  dockerfile = \"$dockerfile_path\"" >> "$bake_file"
    echo "  platforms = $platforms" >> "$bake_file"
    echo "  tags = $tags" >> "$bake_file"
    echo "  push = true" >> "$bake_file"
    echo "}" >> "$bake_file"
    echo >> "$bake_file"
  done

  echo "📜 Generated docker-bake.hcl with multi-arch targets at $bake_file."
}

append_json_entry() {
  local title="$1"
  local digest="$2"
  shift 2
  local tags=("$@")
  json_tags=$(printf '%s\n' "${tags[@]}" | jq -R . | jq -s .)
  jq --arg title "$title" --arg digest "$digest" --argjson tags "$json_tags" '
    if any(.[]; .title == $title) then
      map(if .title == $title then
            .tags += $tags | .tags |= unique | .digest = $digest
          else .
          end)
    else
      . + [{"title": $title, "tags": $tags, "digest": $digest}]
    end
  ' "$JSON_FILE" > "${JSON_FILE}.tmp" && mv "${JSON_FILE}.tmp" "$JSON_FILE"
}

# Build base images
declare -A seen_php
echo -e "\n🔧 Building base images..."
jq -r '.[] | .php[]' "$MATRIX_FILE" | sort -u | while read -r php_version; do
  php_version=$(echo "$php_version" | tr -d '\r\n')
  safe_php=$(echo "$php_version" | sed 's/\.//g')
  base_tag="php${safe_php}-nonode"
  full_tag="${base_tag}-${BASE_SUFFIX}"
  base_file="$DIST_DIR/${base_tag}-${BASE_SUFFIX}.Dockerfile"
  [[ -n "${seen_php[$safe_php]}" ]] && continue
  seen_php[$safe_php]=1

  sed -e "s|{{LARAVEL_VERSION}}|placeholder|g" \
      -e "s|{{PHP_VERSION}}|$php_version|g" "$TEMPLATE_FILE" > "$base_file"

  all_tags=("$base_tag" "$full_tag")
  write_group_log "$REPO:$base_tag" "${all_tags[@]}"

  digest="sha256:<dry-run>"
  append_json_entry "$REPO:$full_tag" "$digest" "${all_tags[@]}"
done

# Build node images
echo -e "\n🔧 Building Node-enabled images..."
laravel_versions=$(jq -r 'keys[]' "$MATRIX_FILE")
for laravel_version in $laravel_versions; do
  laravel_version=$(echo "$laravel_version" | tr -d '\r')
  php_versions=$(jq -r --arg v "$laravel_version" '.[$v].php // [] | .[]' "$MATRIX_FILE")
  node_versions=$(jq -r --arg v "$laravel_version" '.[$v].node // [] | .[]' "$MATRIX_FILE")
  last_php=$(jq -r --arg v "$laravel_version" '.[$v].php | last' "$MATRIX_FILE")
  last_node=$(jq -r --arg v "$laravel_version" '.[$v].node | last' "$MATRIX_FILE")

  for php_version in $php_versions; do
    safe_php=$(echo "$php_version" | sed 's/\.//g')
    for node_version in $node_versions; do
      safe_node=$(echo "$node_version" | sed 's/\.//g')
      combo_tag="php${safe_php}-node${safe_node}"
      full_tag="${combo_tag}-${NODE_SUFFIX}"
      base_tag="php${safe_php}-nonode-${BASE_SUFFIX}"
      outfile="$DIST_DIR/${combo_tag}-${NODE_SUFFIX}.Dockerfile"

      sed -e "s|{{NODE_VERSION}}|$node_version|g" \
          -e "s|{{BASE_IMAGE}}|$REPO:$base_tag|g" "$NODE_TEMPLATE_FILE" > "$outfile"

      stable_tags=("$combo_tag" "v${laravel_version#v}-$combo_tag")
      if [[ "$php_version" == "$last_php" && "$node_version" == "$last_node" ]]; then
        stable_tags+=("v${laravel_version#v}")
      fi

      all_tags=()
      for tag in "${stable_tags[@]}"; do
        all_tags+=("$tag" "${tag}-${NODE_SUFFIX}")
      done

      digest="sha256:<dry-run>"
      append_json_entry "$REPO:$full_tag" "$digest" "${all_tags[@]}"
    done
  done
done

echo -e "\n✅ Release complete."
echo "📜 JSON blueprint written to: $JSON_FILE"

if [ "$DRY_RUN" = false ]; then
  echo "🛑 Dry run mode disabled. Images are going to be built and pushed..."

  # Create buildx builder if needed
  if ! docker buildx inspect multiarch-builder &>/dev/null; then
    echo "🔧 Creating multiarch buildx builder..."
    docker buildx create --name multiarch-builder --driver docker-container --use
  else
    docker buildx use multiarch-builder
  fi
  docker buildx inspect --bootstrap

  generate_docker_bake_file
  docker buildx bake --file "./bake/$TIMESTAMP/docker-bake.hcl"

  echo "✅ Docker images built, pushed, and digests handled via buildx bake."
else
  echo "🚫 Dry run mode enabled. No images will be built or pushed."
  generate_docker_bake_file
  echo "✅ Bake file generated."
fi