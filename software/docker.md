# Docker

## Instalar Docker

- <https://robots.uc3m.es/installation-guides/install-docker.html>

## Comandos Docker

```bash
docker image ls
```

```bash
docker run -it --rm image_name /bin/bash
```

```bash
docker run -it --rm -e DISPLAY=${DISPLAY} -v /tmp/.X11-unix:/tmp/.X11-unix:rw image_name /bin/bash
```
