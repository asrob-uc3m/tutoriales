# Docker

## Instalar Docker

- <https://robots.uc3m.es/installation-guides/install-docker.html>

## Comandos Docker

### Gestión de images/containers

```bash
docker pull image_name
```

```bash
docker image ls
```

Limpiar todo:

```bash
docker system prune -a
```

### Ejecucción

```bash
docker run -it --rm image_name /bin/bash
```

```bash
docker run -it --rm -e DISPLAY=${DISPLAY} -v /tmp/.X11-unix:/tmp/.X11-unix:rw image_name /bin/bash
```
