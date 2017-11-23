# CMake

CMake es una herramienta software para la compilación multiplataforma. Esto es, para Linux puede generar ficheros Makefile, para Windows puede generar proyectos de Visual Studio, etc. Enlace la documentación oficial [aquí](https://cmake.org/documentation/).

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

Cuando creas un proyecto, querrás que proporcione las bondades multi-plataforma de CMake. ¿Cómo hacerlo? A continuación, un ejemplo extremadamente minimalista de `CMakeLists.txt`. Incluye una única directiva para compilar `main.cpp` y generar el binario ejecutable de nombre `ejecutable`.

```cmake
add_executable(ejecutable main.cpp)
```

A continuación, un ejemplo algo menos minimalista. Nótese que se utiliza`#` para incluir comentarios.

```cmake
cmake_minimum_required(VERSION 2.8)  # Versión mínima que exigimos de CMake, que va ampliando sus capacidades
add_executable(ejecutable main.cpp other.cpp)  # Compilar main.cpp y other.cpp, enlazarlos, y llamar ejecutable al binario generado
```

En general, para una carpeta con uno o varios `.cpp`, aquí un ejemplo de `CMakeLists.txt` algo más extenso:

```cmake
cmake_minimum_required(VERSION 2.8)  # Versión mínima que exigimos de CMake, que va ampliando sus capacidades
project(ejecutable)  # Dar nombre al proyecto
aux_source_directory(. SRC_LIST)  # Parecido a GLOB, no excesivamente recomendado
add_executable(${PROJECT_NAME} ${SRC_LIST})  # Compilar *, enlazarlos, y llamar como el proyecto (en este caso, ejecutable) al binario generado
```

Para un proyecto que dependa de una [librería](libs.md) llamada `EJEMPLO`:
```cmake
cmake_minimum_required(VERSION 2.8)  # Versión mínima que exigimos de CMake, que va ampliando sus capacidades
project(ejecutable)  # Dar nombre al proyecto

find_package(EJEMPLO REQUIRED)  # Nombre de la librería, buscará un módulo de CMake (que define las variables utilizadas a continuación) con este nombre. REQUIRED indica que lo exigimos.

include_directories(${EJEMPLO_INCLUDE_DIRS})  # Indicamos variables que indican rutas de cabeceras de librerias

link_directories(${EJEMPLO_LIBRARY_DIRS})  # Indicamos variables que indican rutas de librerias (en desuso)

target_link_libraries(ejecutable ${EJEMPLO_LIBRARIES})  # Añadimos nombres de librerías (actualmente se recomiendan rutas completas, que vuelve el anterior obsoleto)
```

Nótese que los nombres de las variables no están estandarizados. Una guía más extensa acerca de cómo encontrar librerías puede encontrarse [aquí](https://cmake.org/Wiki/CMake:How_To_Find_Libraries).
