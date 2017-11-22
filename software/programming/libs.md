# Librerías estáticas y dinámicas

Una Librería es un conjunto de funciones. Es como un programa, sólo que no tiene una función `main()`. Contiene funciones típicas para que sean llamadas desde algún otro programa o librería. Cualquier desarrollador puede crear una librería nueva.

## Tipos de librerías

Existen diversas clasificaciones de liberías, que simplificaremos como dos tipos: estáticas y dinámicas.

* `Librerías Estáticas`. Se enlazan al compilar, quedan "dentro" del ejecutable final. En Windows tienen la extensión `.lib`. En Linux tienen la extensión `.a`.

* `Librerías Dinámicas`. Se enlazan al ejecutar, el sistema operativo debe encontrarlas al ejecutar el programa. Si una aplicación se instaló bien, el sistema operativo no debe tener problema para encontrarla. En Windows tienen la extensión `.dll` (en general en `c:\windows\system32` y sin número de versión, de ahí el llamado [dll hell](https://es.wikipedia.org/wiki/Infierno_de_las_DLL)). En Linux tienen la extensión `.so` (normalmente en `/usr/lib` o `/usr/local/lib`, léase sobre la [estructura de carpetas en Debian y derivados](fix-me)); dicho sistema operativo actualiza su listado con un `sudo ldconfig`).

----

Una librería puede estar pre-compilada, o nos pueden dar las fuentes. Si nos dan las fuentes, deberemos compilarla antes.

Para utilizar una librería (esto es, compilar contra él), deberemos tener:
* `Las cabeceras`. Las cabeceras son los ficheros con extensión `.h` o `.hpp` que contienen las ''declaraciones'' (también llamadas ''prototipos'') de las funciones [ver nota]. Una declaración muestra el nombre de la función, sus argumentos y valor de retorno, pero no toda la implementación asociada. Se invocan a través de la ''directriz de preprocesador'' (se llaman así porque se hace en la etapa de ''preprocesamiento'' del compilador) `#include`, que realiza una simple sustitución. El compilador debe ser capaz de localizar las cabeceras.
  * En ''gcc'' de Linux, se utiliza el argumento `-I`, como p.ej. en ''-I/usr/local/include''.
  * En ''Visual Studio 9'', se pueden definir las rutas en Tools -> Options -> Projects and Solutions -> VC++ Directories -> Escoger ''Include Files'' del desplegable ''Show directories for''.
  * En ''CMake'' (solución multi-plataforma) se utiliza la ''directiva de CMake'' `include_directories()`, (véase el [tutorial de CMake](cmake.md)).
* `La librería compilada`. El compilador debe saber dónde están las librerías estáticas.
  * En ''gcc'' de Linux, se utiliza el argumento `-L` para definir la ruta, y `-l` para el nombre de la librería sin el prefijo ''lib'' y sin el sufijo ''.a''.
  * En ''Visual Studio 9'', se pueden definir las rutas en Tools -> Options -> Projects and Solutions -> VC++ Directories -> Escoger ''Library Files'' del desplegable ''Show directories for''. Se pueden definir los nombres de las librerías en Project -> Properties -> Configuration Properties -> Linker -> Input -> Escribir los nombres con extesión de los ''.lib'' (separados por retornos de carro en la ventana de selección).
  * En ''CMake'' (solución multi-plataforma) se utiliza la ''directiva de CMake'' `link_directories()` para definir la ruta, y `target_link_libraries()` para el nombre de la librería,  (véase el [tutorial de CMake](cmake.md)).
  * En ''QtCreator'' se utiliza el archivo de extensión "pro" para enlazar librerías. Un ejemplo para incluir la librería estática YARP_dev en Linux sería: `LIBS += /home/user/Libraries/yarp2/build/lib/libYARP_dev.a`

----

Nota: Una función que esté ''definida'' (esto es, lleva toda su implementación) dentro de una cabecera se llama función ''inline''. Puede ser más eficiente para funciones cortas (¡pero nunca supongas cómo puede optimizar tu compilador!). Puede darse el caso de una librería compuesta únicamente por cabeceras con funciones inline, con lo cual al final se compone únicamente de cabeceras y no lleva librería compilada asociada (ejemplo: la librería Eigen2).

