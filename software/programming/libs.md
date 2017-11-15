# Librerías estáticas y dinámicas

Una Librería es un conjunto de funciones. Es como un programa, sólo que no tiene función main(). Contiene funciones típicas para que sean llamadas desde algún otro programa o librería. Cualquier desarrollador puede crear una librería nueva.

----

Existen dos tipos de librerías: estáticas y dinámicas.

* `Librerías Estáticas`. Se enlazan al compilar, quedan "dentro" del ejecutable final. En Windows tienen la extensión `.lib`. En Linux tienen la extensión `.a`.

* `Librerías Dinámicas`. Se enlazan al ejecutar, el sistema operativo debe encontrarlas al ejecutar el programa. Si una aplicación se instaló bien, el sistema operativo no debe tener problema para encontrarla. En Windows tienen la extensión `.dll` (en general en c:\windows\system32; de ahí el llamado [https://es.wikipedia.org/wiki/Infierno_de_las_DLL dll hell]). En Linux tienen la extensión `.so` (normalmente en /usr/lib o /usr/local/lib, léase [[Estructura_de_carpetas_en_Debian_y_derivados_%28Ubuntu,_Mint...%29|Estructura de carpetas en Debian y derivados]]; dicho sistema operativo actualiza su listado con un ''sudo ldconfig'').

----

Una librería puede estar pre-compilada, o nos pueden dar las fuentes. Si nos dan las fuentes, deberemos compilarla antes.

Para utilizar una librería (esto es, compilar contra él), deberemos tener:
* `Las cabeceras`. Las cabeceras son los ficheros con extensión `.h` o `.hpp` que contienen las ''declaraciones'' (también llamadas ''prototipos'') de las funciones [ver nota]. Una declaración muestra el nombre de la función, sus argumentos y valor de retorno, pero no toda la implementación asociada. Se invocan a través de la ''directriz de preprocesador'' (se llaman así porque se hace en la etapa de ''preprocesamiento'' del compilador) `#include`, que realiza una simple sustitución. El compilador debe ser capaz de localizar las cabeceras.
** En ''gcc'' de Linux, se utiliza el argumento `-I`, como p.ej. en ''-I/usr/local/include''.
** En ''Visual Studio 9'', se pueden definir las rutas en Tools -> Options -> Projects and Solutions -> VC++ Directories -> Escoger ''Include Files'' del desplegable ''Show directories for''.
** En ''CMake'' (solución multi-plataforma) se utiliza la ''directiva de CMake'' `include_directories()`, (véase [[Tutorial_CMake|el tutorial de CMake (ASROB)]]).
* `La librería compilada`. El compilador debe saber dónde están las librerías estáticas.
** En ''gcc'' de Linux, se utiliza el argumento `-L` para definir la ruta, y `-l` para el nombre de la librería sin el prefijo ''lib'' y sin el sufijo ''.a''.
** En ''Visual Studio 9'', se pueden definir las rutas en Tools -> Options -> Projects and Solutions -> VC++ Directories -> Escoger ''Library Files'' del desplegable ''Show directories for''. Se pueden definir los nombres de las librerías en Project -> Properties -> Configuration Properties -> Linker -> Input -> Escribir los nombres con extesión de los ''.lib'' (separados por retornos de carro en la ventana de selección).
** En ''CMake'' (solución multi-plataforma) se utiliza la ''directiva de CMake'' `link_directories()` para definir la ruta, y `target_link_libraries()` para el nombre de la librería,  (véase [[Tutorial_CMake|el tutorial de CMake (ASROB)]]).
** En ''QtCreator'' se utiliza el archivo de extensión "pro" para enlazar librerías. Un ejemplo para incluir la librería estática YARP_dev en Linux sería:
 LIBS += /home/user/Libraries/yarp2/build/lib/libYARP_dev.a

----

[nota]: Una función que esté ''definida'' (esto es, lleva toda su implementación) dentro de una cabecera se llama función ''inline''. Puede ser más eficiente para funciones cortas (¡pero nunca supongas cómo puede optimizar tu compilador!). Puede darse el caso de una librería compuesta únicamente por cabeceras con funciones inline, con lo cual al final se compone únicamente de cabeceras y no lleva librería compilada asociada (ejemplo: la librería Eigen2).

