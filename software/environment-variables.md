# Variables de entorno

Las variables de entorno son como variables de un programa (cadenas de caracteres) propios del Sistema Operativo. Cualquier programa las puede utilizar, y los usuarios las pueden modificar.

En Windows se pueden leer con escribir `echo %VARIABLE%` en el Símbolo de Sistema (`cmd.exe`).

En Windows son modificables a través de Panel de Control -\> Sistema -\> Avanzado -\> Variables de Entorno

En Linux se pueden leer con escribir `echo $VARIABLE` en una [consola](linux/bash.md) (específicamente, véase sección de [símbolos importantes](linux/bash.md#símbolos-importantes)).

En Linux se pueden modificar con escribir `export VARIABLE=valor` (véase que es sin el símbolo $) en una consola (válido para la sesión de consola), dentro el fichero [~/.bashrc](linux/configuration-files.md#bashrc), o dentro del fichero [~/.profile](linux/configuration-files.md#profile).

## Variables de Uso Frecuente

- **PATH**: Es donde el sistema operativo busca ejecutables (.exe en Windows, sin extensión en Linux).

## Variables de Uso Frecuente en Linux

- **HOME**: Equivalente a **~** y a **/home/$USER**, es la carpeta personal del usuario de sesión.
- **HOSTNAME**: El nombre de la máquina.
- **LD\_LIBRARY\_PATH**: Es uno de los lugares donde el sistema operativo busca [librerías dinámicas](programming/libs.md).
- **PS1**: *Prompt string 1*, la línea de consola. Más [aquí](https://www.linuxnix.com/linuxunix-shell-ps1-prompt-explained-in-detail/). Véase también **PROMPT_COMMAND**.
- **USER**: Nombre del usuario de sesión.
- **xxxx\_ROOT**: Las aplicaciones pueden utilizar esta variable para saber dónde está la raíz del código fuente descargado de la aplicación xxxx.
- **xxxx\_DIR**: Las aplicaciones pueden utilizar esta variable para saber dónde está la raíz del *build* del código fuente descargado de la aplicación xxxx. Es utilizado por CMake para encontrar el fichero xxxxConfig.cmake o alguna de sus alternativas.
- `!` Contiene el identificador de proceso ([PID](https://en.wikipedia.org/wiki/Process_identifier)) del último programa ejecutado.
- `?` Contiene el valor de retorno del último programa ejecutado (que no es lo mismo que lo que muestra por pantalla, más info: [aquí](http://tldp.org/LDP/abs/html/exit-status.html) y [aquí sus valores estándar](http://tldp.org/LDP/abs/html/exitcodes.html)).

## Variables de Uso Frecuente en Windows

- **USERPROFILE**
- Más [aquí](http://technet.microsoft.com/en-us/library/cc749104(v=ws.10).aspx).
