# drone-plugin-wait-for-it
[![drone-wait-for-it on Docker Hub](https://img.shields.io/docker/automated/albinodrought/drone-wait-for-it.svg)](https://hub.docker.com/r/albinodrought/drone-wait-for-it/)
[![Docker Pulls](https://img.shields.io/docker/pulls/albinodrought/drone-wait-for-it.svg)](https://hub.docker.com/r/albinodrought/drone-wait-for-it)

This is a Bash [Drone](https://github.com/drone/drone) plugin that wraps [wait-for-it.sh](https://github.com/vishnubob/wait-for-it).

## Docker
Build the docker image by running:

```bash
docker build --rm=true -t albinodrought/drone-wait-for-it .
```

## Usage
To perform a check, execute the following:

```bash
docker run --rm \
    -e PLUGIN_HOST=foo \
    -e PLUGIN_PORT=1337 \
    -e PLUGIN_TIMEOUT=120 \
    albinodrought/drone-wait-for-it
```

## Drone usage

```yml
services:
  db:
    image: albinodrought/ephemeral-mysql-alpine
    tmpfs:
      - /var/lib/mysql
    environment:
      - MYSQL_ROOT_PWD=foo
      - MYSQL_USER_DB=bar

pipeline:
  wait-for-db:
    image: albinodrought/drone-wait-for-it
    host: db
    port: 3306

  interact-with-db:
    image: your-regular-db-step-here
```

