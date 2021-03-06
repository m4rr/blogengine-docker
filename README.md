# blogengine-docker

Aegea Docker Image: https://hub.docker.com/r/m4rr/blogengine-docker

## Usage Example 

```
version: '3.7'
services:

  blog:
    restart: unless-stopped
    image: m4rr/blogengine-docker:latest
    depends_on:
      - db
      
  db:
    restart: unless-stopped
    image: mariadb
    environment:
      MYSQL_ROOT_PASSWORD: $MYSQL_ROOT_PASSWORD

```

## How To Upgrade

How to upgrade to the latest build if you're using the Usage Example above:

```sh
docker-compose up --force-recreate --build -d
```

## Live 

Check out [same config](https://github.com/m4rr/blog_m4rr_ru_docker) in production: [blog.m4rr.ru](https://blog.m4rr.ru/).
