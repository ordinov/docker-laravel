# Ordinov Laravel Docker Images

## Examples

### Simple container example

```bash
  # pull the image from docker hub for the desired Laravel version:
  docker pull ordinov/laravel:v10
  # or more specific PHP and NODE version:
  docker pull ordinov/laravel:v10-php8.2-node18
  # run the container:
  docker run -d --name laravel-10 ordinov/laravel:v10
  # install laravel 10 in the container:
  docker exec laravel-10 bash -c "composer create-project laravel/laravel:^10.0 . --quiet"
  docker exec laravel-10 cp .env.example .env
  docker exec laravel-10 php artisan key:generate
  # ... and it's done!
```

### Compose example with database and mount:

```yaml
services:
  laravel-app:
    image: ordinov/laravel:v10
    name: laravel-app
    volumes:
      - './src:/var/www/html'
    ports:
      - '80:80'
    depends_on:
      - laravel-db
    networks:
      - laravel-network
  laravel-db:
    image: mariadb:10.6
    container_name: laravel-db
    restart: unless-stopped
    environment:
      MYSQL_ROOT_PASSWORD: password
      MYSQL_DATABASE: laravel
      MYSQL_USER: user
      MYSQL_PASSWORD: password
    volumes:
      - dbdata:/var/lib/mysql
    networks:
      - laravel-network
volumes:
  dbdata:
networks:
  laravel-network:
    driver: bridge
```

## Supported versions

| Laravel Version | PHP Versions           | Node Versions         |
|------------------|------------------------|------------------------|
| v6               | 7.3, 7.4, 8.0         | 14, 16, 18, 20         |
| v7               | 7.3, 7.4, 8.0         | 14, 16, 18, 20         |
| v8               | 7.3, 7.4, 8.0, 8.1    | 14, 16, 18, 20         |
| v9               | 8.0, 8.1, 8.2         | 14, 16, 18, 20         |
| v10              | 8.1, 8.2              | 14, 16, 18, 20         |
| v11              | 8.1, 8.2, 8.3         | 16, 18, 20             |
| v12              | 8.2, 8.3              | 18, 20                |

## Tags

| Dockerfile | Tags |
|------------|------|
| [`php73-nonode-build1.3`](https://github.com/ordinov/docker-laravel/blob/main/dist/20250930223401/php73-nonode-build1.3.Dockerfile) | `php73-nonode`, `php73-nonode-build1.3` |
| [`php74-nonode-build1.3`](https://github.com/ordinov/docker-laravel/blob/main/dist/20250930223401/php74-nonode-build1.3.Dockerfile) | `php74-nonode`, `php74-nonode-build1.3` |
| [`php80-nonode-build1.3`](https://github.com/ordinov/docker-laravel/blob/main/dist/20250930223401/php80-nonode-build1.3.Dockerfile) | `php80-nonode`, `php80-nonode-build1.3` |
| [`php81-nonode-build1.3`](https://github.com/ordinov/docker-laravel/blob/main/dist/20250930223401/php81-nonode-build1.3.Dockerfile) | `php81-nonode`, `php81-nonode-build1.3` |
| [`php82-nonode-build1.3`](https://github.com/ordinov/docker-laravel/blob/main/dist/20250930223401/php82-nonode-build1.3.Dockerfile) | `php82-nonode`, `php82-nonode-build1.3` |
| [`php83-nonode-build1.3`](https://github.com/ordinov/docker-laravel/blob/main/dist/20250930223401/php83-nonode-build1.3.Dockerfile) | `php83-nonode`, `php83-nonode-build1.3` |
| [`php81-node14-build1.3`](https://github.com/ordinov/docker-laravel/blob/main/dist/20250930223401/php81-node14-build1.3.Dockerfile) | `php81-node14`, `php81-node14-build1.3`, `v10-php81-node14`, `v10-php81-node14-build1.3`, `v8-php81-node14`, `v8-php81-node14-build1.3`, `v9-php81-node14`, `v9-php81-node14-build1.3` |
| [`php81-node16-build1.3`](https://github.com/ordinov/docker-laravel/blob/main/dist/20250930223401/php81-node16-build1.3.Dockerfile) | `php81-node16`, `php81-node16-build1.3`, `v10-php81-node16`, `v10-php81-node16-build1.3`, `v11-php81-node16`, `v11-php81-node16-build1.3`, `v8-php81-node16`, `v8-php81-node16-build1.3`, `v9-php81-node16`, `v9-php81-node16-build1.3` |
| [`php81-node18-build1.3`](https://github.com/ordinov/docker-laravel/blob/main/dist/20250930223401/php81-node18-build1.3.Dockerfile) | `php81-node18`, `php81-node18-build1.3`, `v10-php81-node18`, `v10-php81-node18-build1.3`, `v11-php81-node18`, `v11-php81-node18-build1.3`, `v8-php81-node18`, `v8-php81-node18-build1.3`, `v9-php81-node18`, `v9-php81-node18-build1.3` |
| [`php81-node20-build1.3`](https://github.com/ordinov/docker-laravel/blob/main/dist/20250930223401/php81-node20-build1.3.Dockerfile) | `php81-node20`, `php81-node20-build1.3`, `v10-php81-node20`, `v10-php81-node20-build1.3`, `v11-php81-node20`, `v11-php81-node20-build1.3`, `v8`, `v8-build1.3`, `v8-php81-node20`, `v8-php81-node20-build1.3`, `v9-php81-node20`, `v9-php81-node20-build1.3` |
| [`php82-node14-build1.3`](https://github.com/ordinov/docker-laravel/blob/main/dist/20250930223401/php82-node14-build1.3.Dockerfile) | `php82-node14`, `php82-node14-build1.3`, `v10-php82-node14`, `v10-php82-node14-build1.3`, `v9-php82-node14`, `v9-php82-node14-build1.3` |
| [`php82-node16-build1.3`](https://github.com/ordinov/docker-laravel/blob/main/dist/20250930223401/php82-node16-build1.3.Dockerfile) | `php82-node16`, `php82-node16-build1.3`, `v10-php82-node16`, `v10-php82-node16-build1.3`, `v11-php82-node16`, `v11-php82-node16-build1.3`, `v9-php82-node16`, `v9-php82-node16-build1.3` |
| [`php82-node18-build1.3`](https://github.com/ordinov/docker-laravel/blob/main/dist/20250930223401/php82-node18-build1.3.Dockerfile) | `php82-node18`, `php82-node18-build1.3`, `v10-php82-node18`, `v10-php82-node18-build1.3`, `v11-php82-node18`, `v11-php82-node18-build1.3`, `v12-php82-node18`, `v12-php82-node18-build1.3`, `v9-php82-node18`, `v9-php82-node18-build1.3` |
| [`php82-node20-build1.3`](https://github.com/ordinov/docker-laravel/blob/main/dist/20250930223401/php82-node20-build1.3.Dockerfile) | `php82-node20`, `php82-node20-build1.3`, `v10`, `v10-build1.3`, `v10-php82-node20`, `v10-php82-node20-build1.3`, `v11-php82-node20`, `v11-php82-node20-build1.3`, `v12-php82-node20`, `v12-php82-node20-build1.3`, `v9`, `v9-build1.3`, `v9-php82-node20`, `v9-php82-node20-build1.3` |
| [`php83-node16-build1.3`](https://github.com/ordinov/docker-laravel/blob/main/dist/20250930223401/php83-node16-build1.3.Dockerfile) | `php83-node16`, `php83-node16-build1.3`, `v11-php83-node16`, `v11-php83-node16-build1.3` |
| [`php83-node18-build1.3`](https://github.com/ordinov/docker-laravel/blob/main/dist/20250930223401/php83-node18-build1.3.Dockerfile) | `php83-node18`, `php83-node18-build1.3`, `v11-php83-node18`, `v11-php83-node18-build1.3`, `v12-php83-node18`, `v12-php83-node18-build1.3` |
| [`php83-node20-build1.3`](https://github.com/ordinov/docker-laravel/blob/main/dist/20250930223401/php83-node20-build1.3.Dockerfile) | `php83-node20`, `php83-node20-build1.3`, `v11`, `v11-build1.3`, `v11-php83-node20`, `v11-php83-node20-build1.3`, `v12`, `v12-build1.3`, `v12-php83-node20`, `v12-php83-node20-build1.3` |
| [`php73-node14-build1.3`](https://github.com/ordinov/docker-laravel/blob/main/dist/20250930223401/php73-node14-build1.3.Dockerfile) | `php73-node14`, `php73-node14-build1.3`, `v6-php73-node14`, `v6-php73-node14-build1.3`, `v7-php73-node14`, `v7-php73-node14-build1.3`, `v8-php73-node14`, `v8-php73-node14-build1.3` |
| [`php73-node16-build1.3`](https://github.com/ordinov/docker-laravel/blob/main/dist/20250930223401/php73-node16-build1.3.Dockerfile) | `php73-node16`, `php73-node16-build1.3`, `v6-php73-node16`, `v6-php73-node16-build1.3`, `v7-php73-node16`, `v7-php73-node16-build1.3`, `v8-php73-node16`, `v8-php73-node16-build1.3` |
| [`php73-node18-build1.3`](https://github.com/ordinov/docker-laravel/blob/main/dist/20250930223401/php73-node18-build1.3.Dockerfile) | `php73-node18`, `php73-node18-build1.3`, `v6-php73-node18`, `v6-php73-node18-build1.3`, `v7-php73-node18`, `v7-php73-node18-build1.3`, `v8-php73-node18`, `v8-php73-node18-build1.3` |
| [`php73-node20-build1.3`](https://github.com/ordinov/docker-laravel/blob/main/dist/20250930223401/php73-node20-build1.3.Dockerfile) | `php73-node20`, `php73-node20-build1.3`, `v6-php73-node20`, `v6-php73-node20-build1.3`, `v7-php73-node20`, `v7-php73-node20-build1.3`, `v8-php73-node20`, `v8-php73-node20-build1.3` |
| [`php74-node14-build1.3`](https://github.com/ordinov/docker-laravel/blob/main/dist/20250930223401/php74-node14-build1.3.Dockerfile) | `php74-node14`, `php74-node14-build1.3`, `v6-php74-node14`, `v6-php74-node14-build1.3`, `v7-php74-node14`, `v7-php74-node14-build1.3`, `v8-php74-node14`, `v8-php74-node14-build1.3` |
| [`php74-node16-build1.3`](https://github.com/ordinov/docker-laravel/blob/main/dist/20250930223401/php74-node16-build1.3.Dockerfile) | `php74-node16`, `php74-node16-build1.3`, `v6-php74-node16`, `v6-php74-node16-build1.3`, `v7-php74-node16`, `v7-php74-node16-build1.3`, `v8-php74-node16`, `v8-php74-node16-build1.3` |
| [`php74-node18-build1.3`](https://github.com/ordinov/docker-laravel/blob/main/dist/20250930223401/php74-node18-build1.3.Dockerfile) | `php74-node18`, `php74-node18-build1.3`, `v6-php74-node18`, `v6-php74-node18-build1.3`, `v7-php74-node18`, `v7-php74-node18-build1.3`, `v8-php74-node18`, `v8-php74-node18-build1.3` |
| [`php74-node20-build1.3`](https://github.com/ordinov/docker-laravel/blob/main/dist/20250930223401/php74-node20-build1.3.Dockerfile) | `php74-node20`, `php74-node20-build1.3`, `v6-php74-node20`, `v6-php74-node20-build1.3`, `v7-php74-node20`, `v7-php74-node20-build1.3`, `v8-php74-node20`, `v8-php74-node20-build1.3` |
| [`php80-node14-build1.3`](https://github.com/ordinov/docker-laravel/blob/main/dist/20250930223401/php80-node14-build1.3.Dockerfile) | `php80-node14`, `php80-node14-build1.3`, `v6-php80-node14`, `v6-php80-node14-build1.3`, `v7-php80-node14`, `v7-php80-node14-build1.3`, `v8-php80-node14`, `v8-php80-node14-build1.3`, `v9-php80-node14`, `v9-php80-node14-build1.3` |
| [`php80-node16-build1.3`](https://github.com/ordinov/docker-laravel/blob/main/dist/20250930223401/php80-node16-build1.3.Dockerfile) | `php80-node16`, `php80-node16-build1.3`, `v6-php80-node16`, `v6-php80-node16-build1.3`, `v7-php80-node16`, `v7-php80-node16-build1.3`, `v8-php80-node16`, `v8-php80-node16-build1.3`, `v9-php80-node16`, `v9-php80-node16-build1.3` |
| [`php80-node18-build1.3`](https://github.com/ordinov/docker-laravel/blob/main/dist/20250930223401/php80-node18-build1.3.Dockerfile) | `php80-node18`, `php80-node18-build1.3`, `v6-php80-node18`, `v6-php80-node18-build1.3`, `v7-php80-node18`, `v7-php80-node18-build1.3`, `v8-php80-node18`, `v8-php80-node18-build1.3`, `v9-php80-node18`, `v9-php80-node18-build1.3` |
| [`php80-node20-build1.3`](https://github.com/ordinov/docker-laravel/blob/main/dist/20250930223401/php80-node20-build1.3.Dockerfile) | `php80-node20`, `php80-node20-build1.3`, `v6`, `v6-build1.3`, `v6-php80-node20`, `v6-php80-node20-build1.3`, `v7`, `v7-build1.3`, `v7-php80-node20`, `v7-php80-node20-build1.3`, `v8-php80-node20`, `v8-php80-node20-build1.3`, `v9-php80-node20`, `v9-php80-node20-build1.3` |