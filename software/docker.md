# Docker

## Instalar Docker

- <https://robots.uc3m.es/installation-guides/install-docker.html>

## Comandos Docker

Notas:

- Donde figura `:TAG`, suele ser opcional, por defecto es `:latest`.
- Según URL, tendrás configurado unos permisos. Para autentificarse, puede ser necesario `docker login URL` (donde `URL` es opcional y por defecto es para <hub.docker.com>)

### Descargar image

Descargar image ya creada y subida:

```bash
docker pull IMAGE_SOURCE:TAG
```

Listar images:

```bash
docker image ls
```

### Crear y subir image

Crear image (pon lo que quieras en NAME_IMAGE):

```bash
docker build -t NAME_IMAGE:TAG -f ./Dockerfile .
```

Asociar nueva tag a image existente (p.ej. para añadir una URL que sirva de prefijo y así poder subir vía `docker push`), 

```bash
docker tag SOURCE_IMAGE:TAG TARGET_IMAGE:TAG
```

Subir image:

```bash
docker push IMAGE:TAG
```

Si subes a <ghcr.io/ORG>, dentro de GitHub aparecerá como paquete y podrás asociarlo a un repositorio vía interfaz web (técnicamente, configurar `org.opencontainers.image.source`).

### Ejecucción

Nótese que todos los ejemplos se muestran con `/bin/bash`, pero puede omitirse si existe comando por defecto, o modificarse en caso de ser necesario.

```bash
docker run -it --rm IMAGE:TAG /bin/bash
```

```bash
docker run -it --rm -e DISPLAY=${DISPLAY} -v /tmp/.X11-unix:/tmp/.X11-unix:rw IMAGE:TAG /bin/bash
```

Parámetros adicionales:

- `--host network`
- `-v` o `--volume` (separado por `:`)

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

Parámetros adicionales:

- Se pueden emplear los de Docker de la sección anterior
- `-e ENV_VAR=valor`
- `-v` no suele hacer falta si se está usando `--home --user`

### Conectarse a container

Listar containers:

```bash
docker container ls
```

Sustituye `CONTAINER_ID` por el hash corresponiente:

```bash
docker exec -it CONTAINER_ID /bin/bash
```

### Limpieza

Eliminar todo (images y containers):

```bash
docker system prune -a
```

## Algunos buenos images

En <https://hub.docker.com> salvo que se indique otro (e.g. <https://ghcr.io> de GitHub).

### Public

REPOSITORY                            | TAG     | SIZE  | Comments
--------------------------------------|---------|-------|------------
cielavenir/openrave                   | jammy   | ~3 GB | OpenRAVE (para TEO)
palroboticssl/tiago_tutorials         | melodic | ~5 GB | TIAGo, Gazebo, ROS (sin distro PAL)
stephanecaron/lipm_walking_controller | latest  | ~3 GB | Choreonoid

### Private

REPOSITORY                                                 | TAG     | SIZE  | Comments
-----------------------------------------------------------|---------|-------|------------
ghcr.io/roboticslab-uc3m/roboasset-demo                    | latest  | ~3 GB | KukaIiwa+ROS2
ghcr.io/roboticslab-uc3m/tiago-2021-accessrobot            | latest  | ~5 GB | TIAGo, Gazebo, ROS (sin distro PAL)
gitlab.com/pal-robotics/.../dockers/container_registry/... | latest  | ~2 GB | TIAGo, Gazebo, ROS (con Ferrum/Gallium)

### Aún más

Con visibilidad público/privado según permisos/login:

- <https://github.com/orgs/asrob-uc3m/packages> (vacío, en momento de escribir esto).
- <https://github.com/orgs/roboticslab-uc3m/packages>
- <https://github.com/orgs/robotology/packages>

## Más recursos

- <https://docs.docker.com/engine/reference/commandline>
