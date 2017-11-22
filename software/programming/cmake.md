# CMake

CMake es una herramienta software para la compilación multiplataforma. Esto es, para Linux puede generar ficheros Makefile, para Windows puede generar proyectos de Visual Studio, etc.

Reconocerás que un proyecto utiliza CMake por un fichero que se llama `CMakeLists.txt`. Si estás en la raíz del proyecto y ves este fichero, la buena práctica para compilar el proyecto en una terminal (estilo [bash](../linux/bash.md)) es:

``` bash
mkdir -p build && cmake .. && make
```

La explicación de esta línea es (donde `&&` lanza un comando sólo si el anterior se ha realizado con éxito):
``` bash
mkdir -p build  # Crea una carpeta build, -p para no dar error si ya existe
cmake ..  # Genera un Makefile con las opciones por defecto
make  # Make sigue las directrices del Makefile para invocar compilador, etc
```

Podemos modificar las opciones con la opción `-D`:
``` bash
cmake .. -DOPTION1=ON -DOPTION2=/mi/ruta  # Asigna ON a OPTION1, y /mi/ruta a OPTION2
```
O a través de interfaces semi-gráficas `ccmake ..` (modo `ncurses` de Linux) o gráficas `cmake-gui` (por defecto en Windows).

## Generar un CMakeLists.txt

Cuando creas un proyecto, querrás que proporcione las bondades multi-plataforma de CMake. ¿Cómo hacerlo? A continuación, un ejemplo mínimo.

```cmake
cmake_minimum_required(VERSION 2.8.7)

add_executable(ejecutable main.cpp)
```

En general, si tienes una carpeta uno o varios `.cpp`, aquí tienes un fichero `CMakeLists.txt` que servirá si el proyecto no depende de librerías adicionales. Nótese que `#` indica comentarios para documentación:

```cmake
cmake_minimum_required(VERSION 2.8.7)

set(KEYWORD "ejectutable")  # Creamos una variable llamada KEYWORD de valor "ejecutable"

project(${KEYWORD})

add_executable(${KEYWORD} main.cpp)
```

Para un proyecto que dependa de YARP:
```cmake
cmake_minimum_required(VERSION 2.8.7)

find_package()  # paquete a encontrar

include_directories()  # rutas de cabeceras de librerias

link_directories()  # rutas de librerias

target_link_libraries(${KEYWORD})  # añadir nombres de librerias
```