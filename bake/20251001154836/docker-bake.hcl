group "base" {
  targets = [
    "ordinov_laravel_php73_nonode_build1_3",
    "ordinov_laravel_php74_nonode_build1_3",
    "ordinov_laravel_php80_nonode_build1_3",
    "ordinov_laravel_php81_nonode_build1_3",
    "ordinov_laravel_php82_nonode_build1_3",
    "ordinov_laravel_php83_nonode_build1_3",
    "ordinov_laravel_php84_nonode_build1_3",
  ]
}

group "node" {
  targets = [
    "ordinov_laravel_php81_node14_build1_3",
    "ordinov_laravel_php81_node16_build1_3",
    "ordinov_laravel_php81_node18_build1_3",
    "ordinov_laravel_php81_node20_build1_3",
    "ordinov_laravel_php82_node14_build1_3",
    "ordinov_laravel_php82_node16_build1_3",
    "ordinov_laravel_php82_node18_build1_3",
    "ordinov_laravel_php82_node20_build1_3",
    "ordinov_laravel_php83_node16_build1_3",
    "ordinov_laravel_php83_node18_build1_3",
    "ordinov_laravel_php83_node20_build1_3",
    "ordinov_laravel_php84_node18_build1_3",
    "ordinov_laravel_php84_node20_build1_3",
    "ordinov_laravel_php73_node14_build1_3",
    "ordinov_laravel_php73_node16_build1_3",
    "ordinov_laravel_php73_node18_build1_3",
    "ordinov_laravel_php73_node20_build1_3",
    "ordinov_laravel_php74_node14_build1_3",
    "ordinov_laravel_php74_node16_build1_3",
    "ordinov_laravel_php74_node18_build1_3",
    "ordinov_laravel_php74_node20_build1_3",
    "ordinov_laravel_php80_node14_build1_3",
    "ordinov_laravel_php80_node16_build1_3",
    "ordinov_laravel_php80_node18_build1_3",
    "ordinov_laravel_php80_node20_build1_3",
  ]
}

target "ordinov_laravel_php73_nonode_build1_3" {
  context = "."
  dockerfile = "./dist/20251001154836/php73-nonode-build1.3.Dockerfile"
  platforms = ["linux/amd64"]
  tags = ["ordinov/laravel:php73-nonode","ordinov/laravel:php73-nonode-build1.3"]
  push = true
}

target "ordinov_laravel_php74_nonode_build1_3" {
  context = "."
  dockerfile = "./dist/20251001154836/php74-nonode-build1.3.Dockerfile"
  platforms = ["linux/amd64"]
  tags = ["ordinov/laravel:php74-nonode","ordinov/laravel:php74-nonode-build1.3"]
  push = true
}

target "ordinov_laravel_php80_nonode_build1_3" {
  context = "."
  dockerfile = "./dist/20251001154836/php80-nonode-build1.3.Dockerfile"
  platforms = ["linux/amd64"]
  tags = ["ordinov/laravel:php80-nonode","ordinov/laravel:php80-nonode-build1.3"]
  push = true
}

target "ordinov_laravel_php81_nonode_build1_3" {
  context = "."
  dockerfile = "./dist/20251001154836/php81-nonode-build1.3.Dockerfile"
  platforms = ["linux/amd64"]
  tags = ["ordinov/laravel:php81-nonode","ordinov/laravel:php81-nonode-build1.3"]
  push = true
}

target "ordinov_laravel_php82_nonode_build1_3" {
  context = "."
  dockerfile = "./dist/20251001154836/php82-nonode-build1.3.Dockerfile"
  platforms = ["linux/amd64"]
  tags = ["ordinov/laravel:php82-nonode","ordinov/laravel:php82-nonode-build1.3"]
  push = true
}

target "ordinov_laravel_php83_nonode_build1_3" {
  context = "."
  dockerfile = "./dist/20251001154836/php83-nonode-build1.3.Dockerfile"
  platforms = ["linux/amd64"]
  tags = ["ordinov/laravel:php83-nonode","ordinov/laravel:php83-nonode-build1.3"]
  push = true
}

target "ordinov_laravel_php84_nonode_build1_3" {
  context = "."
  dockerfile = "./dist/20251001154836/php84-nonode-build1.3.Dockerfile"
  platforms = ["linux/amd64"]
  tags = ["ordinov/laravel:php84-nonode","ordinov/laravel:php84-nonode-build1.3"]
  push = true
}

target "ordinov_laravel_php81_node14_build1_3" {
  context = "."
  dockerfile = "./dist/20251001154836/php81-node14-build1.3.Dockerfile"
  platforms = ["linux/amd64"]
  tags = ["ordinov/laravel:php81-node14","ordinov/laravel:php81-node14-build1.3","ordinov/laravel:v10-php81-node14","ordinov/laravel:v10-php81-node14-build1.3","ordinov/laravel:v8-php81-node14","ordinov/laravel:v8-php81-node14-build1.3","ordinov/laravel:v9-php81-node14","ordinov/laravel:v9-php81-node14-build1.3"]
  push = true
}

target "ordinov_laravel_php81_node16_build1_3" {
  context = "."
  dockerfile = "./dist/20251001154836/php81-node16-build1.3.Dockerfile"
  platforms = ["linux/amd64"]
  tags = ["ordinov/laravel:php81-node16","ordinov/laravel:php81-node16-build1.3","ordinov/laravel:v10-php81-node16","ordinov/laravel:v10-php81-node16-build1.3","ordinov/laravel:v11-php81-node16","ordinov/laravel:v11-php81-node16-build1.3","ordinov/laravel:v8-php81-node16","ordinov/laravel:v8-php81-node16-build1.3","ordinov/laravel:v9-php81-node16","ordinov/laravel:v9-php81-node16-build1.3"]
  push = true
}

target "ordinov_laravel_php81_node18_build1_3" {
  context = "."
  dockerfile = "./dist/20251001154836/php81-node18-build1.3.Dockerfile"
  platforms = ["linux/amd64"]
  tags = ["ordinov/laravel:php81-node18","ordinov/laravel:php81-node18-build1.3","ordinov/laravel:v10-php81-node18","ordinov/laravel:v10-php81-node18-build1.3","ordinov/laravel:v11-php81-node18","ordinov/laravel:v11-php81-node18-build1.3","ordinov/laravel:v8-php81-node18","ordinov/laravel:v8-php81-node18-build1.3","ordinov/laravel:v9-php81-node18","ordinov/laravel:v9-php81-node18-build1.3"]
  push = true
}

target "ordinov_laravel_php81_node20_build1_3" {
  context = "."
  dockerfile = "./dist/20251001154836/php81-node20-build1.3.Dockerfile"
  platforms = ["linux/amd64"]
  tags = ["ordinov/laravel:php81-node20","ordinov/laravel:php81-node20-build1.3","ordinov/laravel:v10-php81-node20","ordinov/laravel:v10-php81-node20-build1.3","ordinov/laravel:v11-php81-node20","ordinov/laravel:v11-php81-node20-build1.3","ordinov/laravel:v8","ordinov/laravel:v8-build1.3","ordinov/laravel:v8-php81-node20","ordinov/laravel:v8-php81-node20-build1.3","ordinov/laravel:v9-php81-node20","ordinov/laravel:v9-php81-node20-build1.3"]
  push = true
}

target "ordinov_laravel_php82_node14_build1_3" {
  context = "."
  dockerfile = "./dist/20251001154836/php82-node14-build1.3.Dockerfile"
  platforms = ["linux/amd64"]
  tags = ["ordinov/laravel:php82-node14","ordinov/laravel:php82-node14-build1.3","ordinov/laravel:v10-php82-node14","ordinov/laravel:v10-php82-node14-build1.3","ordinov/laravel:v9-php82-node14","ordinov/laravel:v9-php82-node14-build1.3"]
  push = true
}

target "ordinov_laravel_php82_node16_build1_3" {
  context = "."
  dockerfile = "./dist/20251001154836/php82-node16-build1.3.Dockerfile"
  platforms = ["linux/amd64"]
  tags = ["ordinov/laravel:php82-node16","ordinov/laravel:php82-node16-build1.3","ordinov/laravel:v10-php82-node16","ordinov/laravel:v10-php82-node16-build1.3","ordinov/laravel:v11-php82-node16","ordinov/laravel:v11-php82-node16-build1.3","ordinov/laravel:v9-php82-node16","ordinov/laravel:v9-php82-node16-build1.3"]
  push = true
}

target "ordinov_laravel_php82_node18_build1_3" {
  context = "."
  dockerfile = "./dist/20251001154836/php82-node18-build1.3.Dockerfile"
  platforms = ["linux/amd64"]
  tags = ["ordinov/laravel:php82-node18","ordinov/laravel:php82-node18-build1.3","ordinov/laravel:v10-php82-node18","ordinov/laravel:v10-php82-node18-build1.3","ordinov/laravel:v11-php82-node18","ordinov/laravel:v11-php82-node18-build1.3","ordinov/laravel:v12-php82-node18","ordinov/laravel:v12-php82-node18-build1.3","ordinov/laravel:v9-php82-node18","ordinov/laravel:v9-php82-node18-build1.3"]
  push = true
}

target "ordinov_laravel_php82_node20_build1_3" {
  context = "."
  dockerfile = "./dist/20251001154836/php82-node20-build1.3.Dockerfile"
  platforms = ["linux/amd64"]
  tags = ["ordinov/laravel:php82-node20","ordinov/laravel:php82-node20-build1.3","ordinov/laravel:v10","ordinov/laravel:v10-build1.3","ordinov/laravel:v10-php82-node20","ordinov/laravel:v10-php82-node20-build1.3","ordinov/laravel:v11-php82-node20","ordinov/laravel:v11-php82-node20-build1.3","ordinov/laravel:v12-php82-node20","ordinov/laravel:v12-php82-node20-build1.3","ordinov/laravel:v9","ordinov/laravel:v9-build1.3","ordinov/laravel:v9-php82-node20","ordinov/laravel:v9-php82-node20-build1.3"]
  push = true
}

target "ordinov_laravel_php83_node16_build1_3" {
  context = "."
  dockerfile = "./dist/20251001154836/php83-node16-build1.3.Dockerfile"
  platforms = ["linux/amd64"]
  tags = ["ordinov/laravel:php83-node16","ordinov/laravel:php83-node16-build1.3","ordinov/laravel:v11-php83-node16","ordinov/laravel:v11-php83-node16-build1.3"]
  push = true
}

target "ordinov_laravel_php83_node18_build1_3" {
  context = "."
  dockerfile = "./dist/20251001154836/php83-node18-build1.3.Dockerfile"
  platforms = ["linux/amd64"]
  tags = ["ordinov/laravel:php83-node18","ordinov/laravel:php83-node18-build1.3","ordinov/laravel:v11-php83-node18","ordinov/laravel:v11-php83-node18-build1.3","ordinov/laravel:v12-php83-node18","ordinov/laravel:v12-php83-node18-build1.3"]
  push = true
}

target "ordinov_laravel_php83_node20_build1_3" {
  context = "."
  dockerfile = "./dist/20251001154836/php83-node20-build1.3.Dockerfile"
  platforms = ["linux/amd64"]
  tags = ["ordinov/laravel:php83-node20","ordinov/laravel:php83-node20-build1.3","ordinov/laravel:v11","ordinov/laravel:v11-build1.3","ordinov/laravel:v11-php83-node20","ordinov/laravel:v11-php83-node20-build1.3","ordinov/laravel:v12-php83-node20","ordinov/laravel:v12-php83-node20-build1.3"]
  push = true
}

target "ordinov_laravel_php84_node18_build1_3" {
  context = "."
  dockerfile = "./dist/20251001154836/php84-node18-build1.3.Dockerfile"
  platforms = ["linux/amd64"]
  tags = ["ordinov/laravel:php84-node18","ordinov/laravel:php84-node18-build1.3","ordinov/laravel:v12-php84-node18","ordinov/laravel:v12-php84-node18-build1.3"]
  push = true
}

target "ordinov_laravel_php84_node20_build1_3" {
  context = "."
  dockerfile = "./dist/20251001154836/php84-node20-build1.3.Dockerfile"
  platforms = ["linux/amd64"]
  tags = ["ordinov/laravel:php84-node20","ordinov/laravel:php84-node20-build1.3","ordinov/laravel:v12-php84-node20","ordinov/laravel:v12-php84-node20-build1.3","ordinov/laravel:v12","ordinov/laravel:v12-build1.3"]
  push = true
}

target "ordinov_laravel_php73_node14_build1_3" {
  context = "."
  dockerfile = "./dist/20251001154836/php73-node14-build1.3.Dockerfile"
  platforms = ["linux/amd64"]
  tags = ["ordinov/laravel:php73-node14","ordinov/laravel:php73-node14-build1.3","ordinov/laravel:v6-php73-node14","ordinov/laravel:v6-php73-node14-build1.3","ordinov/laravel:v7-php73-node14","ordinov/laravel:v7-php73-node14-build1.3","ordinov/laravel:v8-php73-node14","ordinov/laravel:v8-php73-node14-build1.3"]
  push = true
}

target "ordinov_laravel_php73_node16_build1_3" {
  context = "."
  dockerfile = "./dist/20251001154836/php73-node16-build1.3.Dockerfile"
  platforms = ["linux/amd64"]
  tags = ["ordinov/laravel:php73-node16","ordinov/laravel:php73-node16-build1.3","ordinov/laravel:v6-php73-node16","ordinov/laravel:v6-php73-node16-build1.3","ordinov/laravel:v7-php73-node16","ordinov/laravel:v7-php73-node16-build1.3","ordinov/laravel:v8-php73-node16","ordinov/laravel:v8-php73-node16-build1.3"]
  push = true
}

target "ordinov_laravel_php73_node18_build1_3" {
  context = "."
  dockerfile = "./dist/20251001154836/php73-node18-build1.3.Dockerfile"
  platforms = ["linux/amd64"]
  tags = ["ordinov/laravel:php73-node18","ordinov/laravel:php73-node18-build1.3","ordinov/laravel:v6-php73-node18","ordinov/laravel:v6-php73-node18-build1.3","ordinov/laravel:v7-php73-node18","ordinov/laravel:v7-php73-node18-build1.3","ordinov/laravel:v8-php73-node18","ordinov/laravel:v8-php73-node18-build1.3"]
  push = true
}

target "ordinov_laravel_php73_node20_build1_3" {
  context = "."
  dockerfile = "./dist/20251001154836/php73-node20-build1.3.Dockerfile"
  platforms = ["linux/amd64"]
  tags = ["ordinov/laravel:php73-node20","ordinov/laravel:php73-node20-build1.3","ordinov/laravel:v6-php73-node20","ordinov/laravel:v6-php73-node20-build1.3","ordinov/laravel:v7-php73-node20","ordinov/laravel:v7-php73-node20-build1.3","ordinov/laravel:v8-php73-node20","ordinov/laravel:v8-php73-node20-build1.3"]
  push = true
}

target "ordinov_laravel_php74_node14_build1_3" {
  context = "."
  dockerfile = "./dist/20251001154836/php74-node14-build1.3.Dockerfile"
  platforms = ["linux/amd64"]
  tags = ["ordinov/laravel:php74-node14","ordinov/laravel:php74-node14-build1.3","ordinov/laravel:v6-php74-node14","ordinov/laravel:v6-php74-node14-build1.3","ordinov/laravel:v7-php74-node14","ordinov/laravel:v7-php74-node14-build1.3","ordinov/laravel:v8-php74-node14","ordinov/laravel:v8-php74-node14-build1.3"]
  push = true
}

target "ordinov_laravel_php74_node16_build1_3" {
  context = "."
  dockerfile = "./dist/20251001154836/php74-node16-build1.3.Dockerfile"
  platforms = ["linux/amd64"]
  tags = ["ordinov/laravel:php74-node16","ordinov/laravel:php74-node16-build1.3","ordinov/laravel:v6-php74-node16","ordinov/laravel:v6-php74-node16-build1.3","ordinov/laravel:v7-php74-node16","ordinov/laravel:v7-php74-node16-build1.3","ordinov/laravel:v8-php74-node16","ordinov/laravel:v8-php74-node16-build1.3"]
  push = true
}

target "ordinov_laravel_php74_node18_build1_3" {
  context = "."
  dockerfile = "./dist/20251001154836/php74-node18-build1.3.Dockerfile"
  platforms = ["linux/amd64"]
  tags = ["ordinov/laravel:php74-node18","ordinov/laravel:php74-node18-build1.3","ordinov/laravel:v6-php74-node18","ordinov/laravel:v6-php74-node18-build1.3","ordinov/laravel:v7-php74-node18","ordinov/laravel:v7-php74-node18-build1.3","ordinov/laravel:v8-php74-node18","ordinov/laravel:v8-php74-node18-build1.3"]
  push = true
}

target "ordinov_laravel_php74_node20_build1_3" {
  context = "."
  dockerfile = "./dist/20251001154836/php74-node20-build1.3.Dockerfile"
  platforms = ["linux/amd64"]
  tags = ["ordinov/laravel:php74-node20","ordinov/laravel:php74-node20-build1.3","ordinov/laravel:v6-php74-node20","ordinov/laravel:v6-php74-node20-build1.3","ordinov/laravel:v7-php74-node20","ordinov/laravel:v7-php74-node20-build1.3","ordinov/laravel:v8-php74-node20","ordinov/laravel:v8-php74-node20-build1.3"]
  push = true
}

target "ordinov_laravel_php80_node14_build1_3" {
  context = "."
  dockerfile = "./dist/20251001154836/php80-node14-build1.3.Dockerfile"
  platforms = ["linux/amd64"]
  tags = ["ordinov/laravel:php80-node14","ordinov/laravel:php80-node14-build1.3","ordinov/laravel:v6-php80-node14","ordinov/laravel:v6-php80-node14-build1.3","ordinov/laravel:v7-php80-node14","ordinov/laravel:v7-php80-node14-build1.3","ordinov/laravel:v8-php80-node14","ordinov/laravel:v8-php80-node14-build1.3","ordinov/laravel:v9-php80-node14","ordinov/laravel:v9-php80-node14-build1.3"]
  push = true
}

target "ordinov_laravel_php80_node16_build1_3" {
  context = "."
  dockerfile = "./dist/20251001154836/php80-node16-build1.3.Dockerfile"
  platforms = ["linux/amd64"]
  tags = ["ordinov/laravel:php80-node16","ordinov/laravel:php80-node16-build1.3","ordinov/laravel:v6-php80-node16","ordinov/laravel:v6-php80-node16-build1.3","ordinov/laravel:v7-php80-node16","ordinov/laravel:v7-php80-node16-build1.3","ordinov/laravel:v8-php80-node16","ordinov/laravel:v8-php80-node16-build1.3","ordinov/laravel:v9-php80-node16","ordinov/laravel:v9-php80-node16-build1.3"]
  push = true
}

target "ordinov_laravel_php80_node18_build1_3" {
  context = "."
  dockerfile = "./dist/20251001154836/php80-node18-build1.3.Dockerfile"
  platforms = ["linux/amd64"]
  tags = ["ordinov/laravel:php80-node18","ordinov/laravel:php80-node18-build1.3","ordinov/laravel:v6-php80-node18","ordinov/laravel:v6-php80-node18-build1.3","ordinov/laravel:v7-php80-node18","ordinov/laravel:v7-php80-node18-build1.3","ordinov/laravel:v8-php80-node18","ordinov/laravel:v8-php80-node18-build1.3","ordinov/laravel:v9-php80-node18","ordinov/laravel:v9-php80-node18-build1.3"]
  push = true
}

target "ordinov_laravel_php80_node20_build1_3" {
  context = "."
  dockerfile = "./dist/20251001154836/php80-node20-build1.3.Dockerfile"
  platforms = ["linux/amd64"]
  tags = ["ordinov/laravel:php80-node20","ordinov/laravel:php80-node20-build1.3","ordinov/laravel:v6","ordinov/laravel:v6-build1.3","ordinov/laravel:v6-php80-node20","ordinov/laravel:v6-php80-node20-build1.3","ordinov/laravel:v7","ordinov/laravel:v7-build1.3","ordinov/laravel:v7-php80-node20","ordinov/laravel:v7-php80-node20-build1.3","ordinov/laravel:v8-php80-node20","ordinov/laravel:v8-php80-node20-build1.3","ordinov/laravel:v9-php80-node20","ordinov/laravel:v9-php80-node20-build1.3"]
  push = true
}

