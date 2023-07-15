# Docker

## Instalar Docker

- <https://robots.uc3m.es/installation-guides/install-docker.html>

## Comandos Docker

### Gestión de images/containers

Descargar image:

```bash
docker pull image_repository
```

Listar images:

```bash
docker image ls
```

Listar containers:

```bash
docker container ls
```

Eliminar todo (images y containers):

```bash
docker system prune -a
```

### Ejecucción

Nótese que todos los ejemplos se muestran con `/bin/bash`, pero puede omitirse si existe comando por defecto, o modificarse en caso de ser necesario.

```bash
docker run -it --rm image_repository:tag /bin/bash
```

```bash
docker run -it --rm -e DISPLAY=${DISPLAY} -v /tmp/.X11-unix:/tmp/.X11-unix:rw image_repository:tag /bin/bash
```

#### Ejecucción vía rocker

Útil para gráficos y comunicaciones. Genera imagen cuasi-clon, que en la práctica ocupa sólo MBs en disco.

- Con NVIDIA:

```bash
rocker --home --user --nvidia --x11 --privileged image_repository:tag /bin/bash
```

- Con intel integrated graphics support:


```bash
rocker --home --user --devices /dev/dri/card0 --x11 --privileged image_repository:tag /bin/bash
```

Ejemplo de parámetro adicional: `-e ENV_VAR=valor`. `-v` no suele hacer falta si se está usando `--home --user`.

## Conectarse a container

Sustituye `container_id` por el hash corresponiente:

```bash
docker exec -it container_id /bin/bash
```
