# Bash (consola/terminal)

## Introducción

La consola (o terminal) de Linux es muy útil. Como se mencionó en la [introducción a Linux](introduction.md#atajos-de-teclado-y-ratón), se puede acceder a una consola a través de la combinación de teclas `CTRL`+`ALT`+`t`, y utilizar mecanismos como los portapapeles de Linux, además de sus atajos de teclado propios. Nótese que, al igual que Linux en general, Bash es "sensible a mayúsculas" (al contrario que en Windows, sí hace diferencia el hecho de que una misma letra se escriba con minúscula o mayúscula).

## Atajos de teclado

- `tab`: autocompletado a partir de lo escrito (es necesario pulsar dos veces si hay existen opciones).
- flecha `arriba`/`abajo`: moverse a través de historial de comandos.
- `CTRL-r`: búsqueda de comandos escritos anteriormente (pulsar y empezar a teclear).

## Símbolos especiales

En esta sección se comentan algunos símbolos especiales. En los ejemplos se utilizan los comandos `ls` (listar contenido de carpeta) y `cd` (cambiar de carpeta) que se explican con mayor detalle en la sección de [comandos útiles](#listado-alfabético-de-comandos-útiles).

- `/` Se utiliza como delimitador entre nombres de carpetas, y entre nombres de carpetas y archivos (equivalente en Windows: `\`). Por ejemplo: `/etc/crontab` indica que dentro de la carpeta `/etc` hay un fichero que se llama `crontab`.
- `.` Significa "aquí", "en esta carpeta". Por su cuenta, muchas veces se puede omitir (`ls .` se puede abreviar como `ls`, y `cd .` no hace nada).
    - Se utiliza cuando se quiere especificar una ruta relativa. Por ejemplo: `/etc` es una ruta absoluta, se refiere una carpeta `etc` en la raíz del sistema de ficheros; sin embargo, `./etc` es una ruta relativa, se refiere a una carpeta `etc` dentro de la carpeta donde estamos.
    - Se utiliza cuando se quiere lanzar un programa no instalado. Se trata de un caso de uso específico del punto anterior. Cuando un programa no está propiamente instalado (por ejemplo, acabamos de compilar `miPrograma`), uno está obligado a especificar que se quiere ejecutar el de la carpeta donde se está (siguiendo con el ejemplo: `./miPrograma`).
    - También se utiliza dentro del nombre de un fichero, para separar `nombre.extensión`.
    - Por último, como se comentó en la [introducción](introduction.md#notas-adicionales), el `.` al inicio de un nombre de fichero indica fichero oculto, y esto sucede con muchos [ficheros de configuración](configuration-files.md).
- `..` Significa "en la carpeta padre", "la carpeta que contiene esta carpeta". Por ejemplo, ascendemos a la carpeta padre via `cd ..`.
- `*` Significa "cualquier cosa", es un operador "comodín". Por ejemplo: `ls ab*` nos da un listado de todo lo que empieza por `ab`, y `ls *png` nos da un listado de todoque finalice (nombre completo, incluyendo extensión) en `png`.
- `?` Significa "cualquier cosa", es un operador "comodín", pero limitado a una sola letra o carácter. Se pueden poner varios seguidos.
- `#` Significa "comentario", no se ejecuta lo que esté a su derecha. Por ejemplo: `ls # Esto es un comentario` hace lo mismo que `ls`, pero aporta información al lector. Nótese que aunque no se ejecute como tal, puede contener información relevante, véase el Shebang en la sección de [scripts de Bash](#scripts-de-bash).
- `\` La *barra inversa* (*backslash*) tiene dos usos (su equivalente en Windows: `^` (*caret*)):
    - Interpretar como *literal*. Por ejemplo: mediante `ls Mis\ Documentos` se evita el uso de entrecomillado del texto (interpreta el espacio (` `) como *literalmente* un espacio en lugar de como separador de argumentos/parámetros).
    - Se utiliza para trocear un comando en varias líneas, indicando que el comando continúa. Funciona sólo si no se introducen caracteres adicionales a su derecha (aunque en realidad lo que se está introduciendo es una [nueva línea](https://es.wikipedia.org/wiki/Nueva_l%C3%ADnea), y el mecanismo subyacente es el del caso anterior).
- `;` Se puede utilizar para escribir varios comandos en la misma línea (equivalente en Windows: `&`).
- `&&` Similar al anterior, para escribir varios comandos en la misma línea, pero sólo si va bien el primero se ejecuta el segundo (equivalente en Windows: `&&` igual).
- `"` Este tipo de entrecomillado permite espeficicar que un texto va en bloque, pese a la presencia de espacios. Por ejemplo: `cd "Mis Documentos"`.
- \` Este tipo de entrecomillado permite utilizar la salida estándar ([STDOUT](http://man7.org/linux/man-pages/man3/stdout.3.html), que por defecto se muestra por pantalla) de un programa como argumento de otro. Por ejemplo: `cd `\``ls`\` intentaría cambiar de carpeta utilizando el nombre de la primera entrada del listado de `ls` (y daría error en caso de que fuese un fichero en lugar de una carpeta).
- `|` Se llama pipe. Redirige la salida estándar ([STDOUT](http://man7.org/linux/man-pages/man3/stdout.3.html), que por defecto se muestra por pantalla) de un programa a otro programa. Es similar pero de uso algo menos intuitivo que el entrcomillado  \`. Por ejemplo, para salidas estándar muy largos y sin posibilidad de scroll de ratón, se utiliza: `ls | less`, donde `less` permite el avance con la tecla `Enter` y salir con `q`. En otras ocasiones está desaconsejado ([don't pipe the cat](https://memegenerator.net/img/instances/53648306/piping-cat-output-to-grep-thats-not-optimal.jpg), [1](https://www.infoworld.com/article/2614499/unix/unix--when-pipes-don-t-make-sense.html)).
- `>` Redirige la salida estándar ([STDOUT](http://man7.org/linux/man-pages/man3/stdout.3.html), que por defecto se muestra por pantalla) de un programa, a un fichero. Si el fichero ya existe, primero borra su contenido. Por ejemplo: `ls > stdout.log` vuelca el listado de contenido de la carpeta donde se está creando un fichero llamado `stdout.log`. Hemos seleccionado `log` porque se traduce como "registro de actividades", pero puede usarse cualquier extensión o incluso omitirse.
- `>>` Similar a `>`, pero si el fichero ya existe, anexa los datos a continuación de los datos existentes.
- `2>` Redirige la salida de errores ([STDERR](http://man7.org/linux/man-pages/man3/stdout.3.html), que por defecto se muestra por pantalla) de un programa, a un fichero. Si el fichero ya existe, primero borra su contenido. Por ejemplo: `cd` \` `ls` \` `2> stderr.log` vuelca el error (en caso de producirse) creando un fichero llamado `stderr.log`. Existe un fichero muy especial, `/dev/null`, que quiere decir "a ninguna parte" (se traduce como "no me muestre usted los errores"), y se puede utilizar: `cd `\``ls`\`` 2> /dev/null`
- `2>>` Similar a `>`, pero si el fichero ya existe, anexa los datos a continuación de los datos existentes.
- `2>&1` Otra variante de `2>`, redirige a donde se dirija lo de `>`. Existe `1>&2` para el caso inverso.
- `<` Por ejemplo `programa < file.txt` utiliza el contenido de `file.txt` como la entrada estándar ([STDIN](http://man7.org/linux/man-pages/man3/stdin.3.html), que normalmente sería el teclado, de `programa` durante su ejecución.
- `&` Lanza un programa en segundo plano, por ejemplo: `programa &`. Muestra el identificador de proceso ([PID](https://en.wikipedia.org/wiki/Process_identifier)) al lanzar el programa. Se puede listar los programas en segundo plano mediante el comando **jobs**, o pasar el programa a primer plano mediante el comando **fg**.
- `!$` Contiene la última palabra que uno mismo ha escrito en la consola, similar a la [variable de entorno](../environment-variables.md) `_` ([ref](https://unix.stackexchange.com/questions/271659/vs-last-argument-of-the-preceding-command-and-output-redirection)).
- `$` Para obtener el valor de una [variable de entorno](../environment-variables.md).
- `~` Se corresponde con la [variable de entorno](../environment-variables.md) `HOME`. Por ejemplo, `ls ~` y `ls $HOME` son equivalentes.

Estos símbolos se pueden combinar en el mismo comando y en cualquier orden, como por ejemplo: `programa & 2> /dev/null` lanza `programa` en segundo plano, y además evita que no nos estén llegando mensajes de error (que sería el comportamiento por defecto): véase cómo lo utilizamos [aquí](https://github.com/asrob-uc3m/tutoriales/blob/8236fc98076747a377537e608976ac8901108fb0/assets/dotfiles/.bashrc-asrob#L3).

## El comando `man`

El comando `man` proporciona el manual del comando nombrado. Por ejemplo, con `man ls` se accede al manual del comando `ls`.
Dentro de un manual, se puede buscar con `/` (esto es como en [vim](../../writing/vim.md)).
Por ejemplo, con `/--size` se puede obtener información del parámetro `--size` si estamos viendo el manual de `ls`.
Los manuales de `man` se componen de diferentes secciones, del 1 al 8, porque no sólo se refieren a comandos de consola.
Por ejemplo, la sección 3 se centra en la librería C estándar (y además muestra el \#include necesario).
Se puede forzar el ir a la entrada de una sección, por ejemplo *man 3 scanf* (aunque funcionaría sin el *3* al no tratarse de una entrada duplicada).
Se sale del manual con la tecla `q`.

Un comando muy similar a `man` es `info`, que en ocasiones propoorciona mejor documentación.

## Listado alfabético de comandos útiles

Estos comandos, en general, también son aplicables a `gnome-terminal`, `bash`, `sh`, `xterm`...

- **apt-cache search**: en Debian/Ubuntu/Mint, da el nombre de los paquetes que contienen los metadatos que se buscan (versión, dependencias, descripción, etc.).
- **apt-file search**: en Debian/Ubuntu/Mint, da el nombre de los paquetes que contienen el fichero que se busca.
- **apt-get install**: en Debian/Ubuntu/Mint, instala un paquete, que puede ser un programa o librería (e.g. de nombre lib*librería*-dev). Suele requerir **sudo** delante.
- **cat**: Escribe el contenido de un fichero por pantalla. Útil para echar un vistazo rápido a un fichero que ni merece la pena abrir para editar. Por ejemplo: `cat README.md` vuelca el contenido del fichero `README.md`. Para ficheros largos, mejor utilizar **head** (donde una opción buena es `head -n 5 README.md` para ver sólo primeras 5 líneas) o **tail** (para ver últimas líneas, véase también su uso en **dmesg**). Curiosamente, para ver una línea específica, es mejor **sed** vía `sed -n 5p README.md` o rango `sed -n 5,7p README.md` (más usos en su sección abajo). Nota: Su nombre proviene de su uso original, para concatenar, por ejemplo: `cat file1.txt file2.txt > new.txt`
- **cd**: cambiar de carpeta.
- **cp**: copiar origen a destino. Una alternativa que muestra progreso y mantiene permisos es `rsync -ah --progress origen destino` (ojo: su comportamiento difiere según `/` al final de la ruta)(para crear respaldos puede ser interesante recursivo y eliminando los ficheros que no existen en el origen: `rsync -rah --progress --delete origen destino`).
- **crontab**: Edita la tabla de tareas periódicas mediante `crontab -e`.
- **diff**: Compara ficheros y carpetas. `colordiff` existe como variante con colores (o `meld` como cliente gráfico).
- **df**: Mostrar ocupación de discos montados. Utilícese con `-lh` para lectura humana.
- **dmesg**: Muestra mensajes del kernel. Utiliza `tail -f /var/log/syslog` para verlo en stream continuo.
- **du**: Mostrar ocupación de subcarpetas. Utilícese con `-lh` para lectura humana, y `-s` para resumido.
- **echo**: Escribe una cadena de caracteres por pantalla. Útil en [scripts de bash](#scripts-de-bash). Por ejemplo: `echo "hola mundo"` escribe `hola mundo` en pantalla.
- **find**: Busca ficheros que cumplan un criterio (nombre, tamaño...).
    - Uso básico (buscar fichero por nombre): `find -name fichero.txt`
    - Uso básico (buscar fichero con comodín, ejemplo extensión): `find -name *.txt`
    - Buscar fichero por nombre sin importar mayúsculas/minúscula: `find -iname fichero.txt`
    - Buscar fichero por nombre delimitando la profundidad de carpetas entre las cuales se busca: `find -maxdepth 2 -name fichero.txt`
    - Véase también su uso en la sección dedicada a [bucles en bash](#bucles-en-bash).
- **free**: Mostrar memoria (RAM) libre. Utilícese con `-lh` para lectura humana.
- **grep**: Busca texto contenido en ficheros.
    - Uso básico: `grep "cadena de texto" fichero.txt`
    - En todos los ficheros de una carpeta: `grep "cadena de texto" *`
    - En todos los ficheros de una carpeta y sus subcarptas (`r` de recursivo): `grep -r "cadena de texto" *`
    - En todos los ficheros de una carpeta y sus subcarptas (`i` de case-insensitive) sin importar mayúsculas/minúsculas de la cadena: `grep -ri "cadena de texto" *`
    - En todos los ficheros con extensión `.cpp` de una carpeta y sus subcarptas sin importar mayúsculas/minúsculas de la cadena: `grep -ri "cadena de texto" --include *.cpp`
    - Mostrar líneas a continuación de las encontradas: `grep -A 1 "cadena" *`
    - Mostrar número de línea en el cual aparece: `grep -n "cadena" *`
    - Mostrar fichero completo marcando cadena en color: `grep --color -E "cadena|$" fichero.txt`
    - Invertir búsqueda (encontrar lo que no lleve cadena): `grep -v "anti cadena" *`
    - Manteniendo color pese a cruzarse con un pipe `|`: `grep --color=always "cadena" * | grep -v "anti cadena"`
    - Modo regular expressions extendido, permite `|` modo "OR" lógico (al ser dentro de la cadena, no es un pipe) y así buscar simultánemente: `grep -E "uno|dos`
- **killall**: Intenta matar a un proceso, por nombre. Puedes utilizar `pkill` en su lugar para nombre incompleto.
  Por defecto, envía una [señal POSIX](https://en.wikipedia.org/wiki/Signal_(IPC)#POSIX_signals) de tipo `SIGTERM` (15), que es algo más brusco que `SIGINT` (2, típico de `CTRL-C`), sin llegar al extremo de `SIGKILL` (9).
  Se puede meter la señal como parámetro: `killall -s 9 nombre` (leer más: [1](http://programmergamer.blogspot.com.es/2013/05/clarification-on-sigint-sigterm-sigkill.html),[2](http://www.yolinux.com/TUTORIALS/C++Signals.html); listado señales: `kill -l`).
  Aquí una alternativa más compleja, metiendo el identificador de proceso ([PID](https://en.wikipedia.org/wiki/Process_identifier) de por medio: `pgrep "nombre" | xargs kill -s 9`.
- **locate**: Parecido al find. Busca ficheros de forma general y rápida porque usa la base de datos de **updatedb**.
- **ls**: Listar contenido de carpeta, `ls -lh` para tamaños con lectura humana. Existen otros muchos `ls`: `lscpu`, `lsmod`... utiliza `ls` y tabulador para autocompletado para descubrirlos.
- **mkdir**: crear una carpeta
- **mv**: mover origen a destino
- **rename**: `--no-act 's/^imagen/image/' *` (donde `^` implica sólo al principio))
- **rm**: borrar (con `-r` para recursivo (entra en subcarpetas), `-rf` recursivo forzado))
- **sed**: Se puede utilizar reemplazar texto en un fichero (**utilizar con cuidado\!\!\!**).
    - Previsualización (vuelca por pantalla sin realizar cambios): `sed "s/viejo/nuevo/g" fichero.txt`
    - Uso básico: `sed -i "s/viejo/nuevo/g" fichero.txt`
    - En todos los ficheros de una carpeta: `sed -i "s/viejo/nuevo/g" *`
    - No tiene funcionalidad recursiva (en todos los ficheros de una carpeta y sus subcarptas), pero se puede conseguir mediante [bucles en bash](#bucles-en-bash).
- **setxkbmap**: Cambiar la configuración del teclado. Por ejemplo, a español: `setxkbmap es,es` (sin X, pero que requiere `sudo`: `loadkeys --verbose es`)
- **sudo**: Realizar el comando que se escribe en la misma línea con permisos de administrador.
- **top**: Mostrar los processos en ejecución (donde ([PID](https://en.wikipedia.org/wiki/Process_identifier) es el identificador de proceso, y COMMAND es el nombre del proceso). Con colores, existe `htop`.
- **tree**: Mostrar contenidos de una carpeta en formato árbol. Con `-L` se puede especificar la profundidad (p.ej. `tree -L 2`). Con `-I` se puede excluir un patrón (p.ej. `tree -I build`) o varios patrones (p.ej. `tree -I "build|__pycache__"`).
- **uname**: Información de bajo nivel, incluida la versión de kernel de Linux y arquitectura/provesadores si se invoca: `uname -a`.
- **updatedb**: Actualiza la base de datos que utiliza **locate**
- **wget**: Descarga un fichero, con `-O` se puede renombrar. Es lo que utilizamos [aquí](configuration-files.md#bashrc).

## Bucles en Bash

Existen diversas maneras de iterar en Bash:

- A través del comando `find -exec`. El operador `{}` se refiere al objeto encontrado, que puede ponerse entre comillas `"{}"` para prevenir frente a espacios en nombres. Por último, se utiliza `\;` para lanzar el comando una vez por incidencia (estilo `comando file1; comando file2; comando file3;`), o `\+` para concatenar (juntar secuencialmente en una sola línea, estilo `comando file1 file2 file3`). Ejemplos:
    - Ejemplo 1: Cambiar a permisos `664` todos los ficheros (`-type f`) de una carpeta y sus subcarpetas:
      ```bash
      find -type f -exec chmod 664 {} \;
      # find -type f -exec chmod 664 {} + # alternativa 1, concatenando
      # find -type f -print0 | xargs -0 chmod 664 # alternativa 2, puede ser más rápido
      ```
    - Ejemplo 2: Cambiar a permisos `775` todas las carpetas (`-type f`) de una carpeta y sus subcarpetas:
      ```bash
      find -type d -exec chmod 775 {} \;
      # find -type d -exec chmod 775 {} + # alternativa 1, concatenando
      # find -type d -print0 | xargs -0 chmod 775 # alternativa 2, puede ser más rápido
      ```
    - Ejemplo 3: Copiar todo lo que contenga "cadena" en su nombre a otra carpeta:
      ```bash
      find -name "*cadena*" -exec cp {} /carpeta/destino  \;
      ```
    - Ejemplo 4: En todos los ficheros (`-type f`) de una carpeta y sus subcarpetas, aplicar `sed`:
      ```bash
      find -type f -exec sed -i 's/viejo/nuevo/g' {} \+
      ```
    - Ejemplo 5: Por cada carpeta que contenga una carpeta `.svn`, aplicar `svn up {}` done `{}` es cada ruta encontrada (omitiendo `.svn` via `sed`):
      ```bash
      find -name ".svn" | sed "s/.svn//g" | xargs svn up
      ```
- A través de bucles `for`.
    - Ejemplo 1 (que se podría realizar en una línea única):
       ```bash
       for fileName in "$(find -name *.mp3)"; do
           printf "$fileName\n";
       done
       ```
    - Ejemplo 2: Renombrar con fecha delante, separado por guión:
       ```bash
       for f in *; do mv -- "$f" "$(date -r "$f" +%Y%m%d)-$f"; done
       ```

## Scripts de Bash

Un Script de Bash (*Bash Script*) es un conjunto de comandos de consola de linux que el sistema operativo ejecuta en orden. Script se suele traducir como fichero de ejecución por lotes.

Nótese que si la complejidad de un Script es muy elevada:

1. Tal vez se pueda simplificar [1](http://porkmail.org/era/unix/award.html)
2. Se puede considerar utilizar un script de Python en su lugar, puesto que a costa de su intérprete se consiguen muchas más herramientas y en general una sintaxis más sencilla.

Cualquier Script de Linux debería tener un [Shebang](https://en.wikipedia.org/wiki/Shebang_%28Unix%29) como primera línea. La primera línea de un Script de Bash debería ser `#!/usr/bin/env bash` ([1](https://stackoverflow.com/tags/bash/info)).

Se pueden encontrar algunos ejemplos de Scripts de Bash en la sección de [ficheros de configuración](configuration-files.md). Nota: al tratarse de ficheros de sistema, en general no necesitan Shebang.

## Páginas similares y relacionadas

- <https://help.ubuntu.com/community/UsingTheTerminal>
- <http://www.tldp.org/HOWTO/Bash-Prompt-HOWTO>
- <https://blog.desdelinux.net/shellcheck-una-utilidad-para-comprobar-tus-scripts-de-shell>
- <http://tldp.org/LDP/Bash-Beginners-Guide/html/index.html>
- <http://tldp.org/LDP/abs/html/index.html>
