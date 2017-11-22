# CMake

CMake es una herramienta software para la compilación multiplataforma.
Esto es, para Linux puede generar ficheros Makefile, para Windows puede
generar proyectos de Visual Studio, etc.

Reconocerás que un proyecto utiliza CMake por un fichero que se llama
`CMakeLists.txt`. Si estás en la raíz del proyecto y ves este fichero,
la buena práctica para compilar el proyecto en una terminal (estilo [bash](../linux/bash.md)) es:

``` bash
mkdir build; cmake ..; make
```

...ya está\!

## Generar un CMakeLists.txt

Habrá veces que quieras crear tu proyecto, que proporcione las bondades
de CMake. ¿Cómo hacerlo? En general, si tienes una carpeta uno o varios
.cpp, aquí tienes un fichero CMakeLists.txt que servirá si el proyecto
no tiene dependencias adicionales:

```cmake
cmake_minimum_required(VERSION 2.8.7)

set(KEYWORD "ejectutable")  # sustituye la palabra ejecutable por la que quieras

# Start a project.
project(${KEYWORD})

#find_package()  # paquete a encontrar

# Search for source code.
file(GLOB folder_source *.cpp *.cc *.c)
file(GLOB folder_header *.h)
source_group("Source Files" FILES ${folder_source})
source_group("Header Files" FILES ${folder_header})

# Automatically add include directories if needed.
foreach(header_file ${folder_header})
  get_filename_component(p ${header_file} PATH)
  include_directories(${p})
endforeach(header_file ${folder_header})

#include_directories()  # rutas de cabeceras de librerias

#link_directories()  # rutas de librerias 

# Set up our main executable.
if (folder_source)
  add_executable(${KEYWORD} ${folder_source} ${folder_header})
  target_link_libraries(${KEYWORD})  # añadir nombres de librerias
else (folder_source)
  message(FATAL_ERROR "No source code files found. Please add something")
endif (folder_source)
```

