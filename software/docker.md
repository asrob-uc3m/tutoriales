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

## Algunos buenos images

En <https://hub.docker.com> salvo que se indique otro (e.g. <https://ghcr.io> de GitHub).

### Public

REPOSITORY                      | TAG     | SIZE  | Comments
--------------------------------|---------|-------|------------
cielavenir/openrave             | jammy   | ~3 GB | OpenRAVE (para TEO)
palroboticssl/tiago_tutorials   | melodic | ~5 GB | TIAGo, Gazebo, ROS (sin distro PAL)

### Private

REPOSITORY                                                 | TAG     | SIZE  | Comments
-----------------------------------------------------------|---------|-------|------------
ghcr.io/roboticslab-uc3m/roboasset-demo                    | latest  | ~3 GB | KukaIiwa+ROS2
ghcr.io/roboticslab-uc3m/tiago-2021-accessrobot            | latest  | ~5 GB | TIAGo, Gazebo, ROS (sin distro PAL)
gitlab.com/pal-robotics/.../dockers/container_registry/... | latest  | ~2 GB | TIAGo, Gazebo, ROS (con Ferrum/Gallium)
