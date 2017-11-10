# Variables de entorno

Las variables de entorno son como variables de un programa (cadenas de
caracteres) propios del Sistema Operativo. Cualquier programa las puede
utilizar, y los usuarios las pueden modificar.

En Windows se pueden leer con escribir **echo %VARIABLE%** en el Símbolo
de Sistema.

En Windows son modificables a través de Panel de Control -\> Sistema -\>
Avanzado -\> Variables de Entorno

En Linux se pueden leer con escribir **echo $VARIABLE** en una [
consola](Consola_de_Linux "wikilink").

En Linux se pueden modificar con escribir **export VARIABLE=valor**
(véase que es sin el símbolo $) en una consola (válido para la sesión
de consola), en ~/.bashrc (al arranque de una consola), o en ~/.profile
(al arranque del PC).

## Variables de Uso Frecuente

**PATH**

Es donde el sistema operativo busca ejecutables (.exe en Windows, sin
extensión en Linux).

## Variables de Uso Frecuente en Linux

**LD\_LIBRARY\_PATH**

Es uno de los lugares donde el sistema operativo busca [librerías
dinámicas](Librerías_Estáticas_y_Dinámicas "wikilink").

**USER**

Nombre del usuario de sesión.

**HOME**

Equivalente a **~** y a **/home/$USER**, es la carpeta personal del
usuario de sesión.

**HOSTNAME**

El nombre de la máquina.

**xxxx\_ROOT**

Las aplicaciones pueden utilizar esta variable para saber dónde está la
raíz del código fuente descargado de la aplicación xxxx.

**xxxx\_DIR**

Las aplicaciones pueden utilizar esta variable para saber dónde está la
raíz del *build* del código fuente descargado de la aplicación xxxx. Es
utilizado por CMake para encontrar el fichero xxxxConfig.cmake o alguna
de sus alternativas.

**?**

Valor de retorno del último programa ejecutado (no es lo mismo que su
salida por pantalla, más
[aquí](http://tldp.org/LDP/abs/html/exit-status.html) y [aquí sus
valores estándar](http://tldp.org/LDP/abs/html/exitcodes.html)).

**\!**

PID del último programa ejecutado.

**\!$**

Esta variable de entorno propia de Linux guarda la última "palabra"
escrita (véase que la notación es un tanto extraña, la exclamación
precede al símbolo $).

## Variables de Uso Frecuente en Windows

**USERPROFILE**

Más en:
<http://technet.microsoft.com/en-us/library/cc749104(v=ws.10).aspx>
