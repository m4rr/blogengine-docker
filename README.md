```
version: '3.7'
services:

  db:
    restart: unless-stopped
    image: mariadb
    environment:
      MYSQL_ROOT_PASSWORD: $MYSQL_ROOT_PASSWORD

  blog:
    restart: unless-stopped
    image: m4rr/blogengine-docker
    depends_on:
      - db

```
