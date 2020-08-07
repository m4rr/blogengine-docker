# blogengine-docker

eagea docker image: https://hub.docker.com/r/m4rr/blogengine-docker

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
