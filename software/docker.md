# Docker

## Instalar Docker

- <https://robots.uc3m.es/installation-guides/install-docker.html>

## Comandos Docker

Nota: Donde figura `:TAG`, suele ser opcional, por defecto es `:latest`.

### Gestión de images/containers

Nota: Según URL, tendrás configurado unos permisos. Para autentificarse, puede ser necesario `docker login URL` (donde `URL` es opcional y por defecto es para <hub.docker.com>)

Descargar image:

```bash
docker pull IMAGE_SOURCE:TAG
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

Asociar nueva tag a image existente (p.ej. para añadir una URL que sirva de prefijo y así poder subir vía `docker push`), 

```bash
docker tag SOURCE_IMAGE:TAG TARGET_IMAGE:TAG
```

Subir image:

```bash
docker push IMAGE:TAG
```

Si subes a <ghcr.io/ORG>, dentro de GitHub aparecerá como paquete y podrás asociarlo a un repositorio vía interfaz web.

### Ejecucción

Nótese que todos los ejemplos se muestran con `/bin/bash`, pero puede omitirse si existe comando por defecto, o modificarse en caso de ser necesario.

```bash
docker run -it --rm IMAGE:TAG /bin/bash
```

```bash
docker run -it --rm -e DISPLAY=${DISPLAY} -v /tmp/.X11-unix:/tmp/.X11-unix:rw IMAGE:TAG /bin/bash
```

#### Ejecucción vía rocker

Útil para gráficos y comunicaciones. Genera imagen cuasi-clon, que en la práctica ocupa sólo MBs en disco.

- Con NVIDIA:

```bash
rocker --home --user --nvidia --x11 --privileged IMAGE:TAG /bin/bash
```

- Con intel integrated graphics support:


```bash
rocker --home --user --devices /dev/dri/card0 --x11 --privileged IMAGE:TAG /bin/bash
```

Ejemplo de parámetro adicional: `-e ENV_VAR=valor`. `-v` no suele hacer falta si se está usando `--home --user`.

## Conectarse a container

Sustituye `CONTAINER_ID` por el hash corresponiente:

```bash
docker exec -it CONTAINER_ID /bin/bash
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
