# Bash (consola/terminal)

- [Introducción](#introducción)
- [Atajos de teclado](#atajos-de-teclado)
- [Símbolos importantes](#símbolos-importantes)
- [El comando `man`](#el-comando-man)
- [Listado alfabético de comandos útiles](#listado-alfabético-de-comandos-útiles)
- [Scripts de Bash](#scripts-de-bash)
- [Referencias](#referencias)

# Introducción
La consola (o terminal) de Linux es muy útil. Como se mencionó en la [introducción a Linux](introduction.md#atajos-de-teclado-y-ratón), se puede acceder a una consola a través de la combinación de teclas `CTRL`+`ALT`+`t`, y utilizar mecanismos como los portapapeles de Linux, además de sus atajos de teclado propios. Nótese que, al igual que Linux en general, Bash es "sensible a mayúsculas" (al contrario que en Windows, sí hace diferencia el hecho de que una misma letra se escriba con minúscula o mayúscula).

## Atajos de teclado
- `tab`: autocompletado a partir de lo escrito (es necesario pulsar dos veces si hay existen opciones).
- flecha `arriba`/`abajo`: moverse a través de historial de comandos.
- `CTRL-r`: búsqueda de comandos escritos anteriormente (pulsar y empezar a teclear).

## Símbolos importantes

En esta sección se comentan algunos símbolos importantes. En los ejemplos se utilizan los comandos `ls` (listar contenido de carpeta) y `cd` (cambiar de carpeta) que se explican con mayor detalle en la sección de [comandos útiles](#listado-alfabético-de-comandos-útiles).
- `/` Se utiliza como delimitador entre nombres de carpetas, y entre nombres de carpetas y archivos (equivalente en Windows: `\`). Por ejemplo: `/etc/crontab` indica que dentro de la carpeta `/etc` hay un fichero que se llama `crontab`.
- `.` Significa "aquí", "en esta carpeta". Por su cuenta, muchas veces se puede omitir (`ls .` se puede abreviar como `ls`, y `cd .` no hace nada).
   - Se utiliza cuando se quiere especificar una ruta relativa. Por ejemplo: `/etc` es una ruta absoluta, se refiere una carpeta `etc` en la raíz del sistema de ficheros; sin embargo, `./etc` es una ruta relativa, se refiere a una carpeta `etc` dentro de la carpeta donde estamos.
   - Se utiliza cuando se quiere lanzar un programa no instalado. Se trata de un caso de uso específico del punto anterior. Cuando un programa no está propiamente instalado (por ejemplo, acabamos de compilar `miPrograma`), uno está obligado a especificar que se quiere ejecutar el de la carpeta donde se está (siguiendo con el ejemplo: `./miPrograma`).
   - También se utiliza dentro del nombre de un fichero, para separar `nombre.extensión`.
   - Por último, como se comentó en la [introducción](introduction.md#notas-adicionales), el `.` al inicio de un nombre de fichero indica fichero oculto, y esto sucede con muchos [ficheros de configuración](configuration-files.md).
- `..` Significa "en la carpeta padre", "la carpeta que contiene esta carpeta". Por ejemplo, ascendemos a la carpeta padre via `cd ..`.
- `*` Significa "cualquier cosa", es un operador "comodín". Por ejemplo, `ls *png` nos da un listado de todos los archivos que finalicen (nombre completo, incluyendo extensión) en `png`.
- `?` Significa "cualquier cosa", es un operador "comodín", pero limitado a una sola letra o carácter. Se pueden poner varios seguidos.
- `\` Se utiliza para trocear un comando en varias líneas, indicando que el comando continúa (equivalente en Windows: `^`).
- `;` Se puede utilizar para escribir varios comandos en la misma línea (equivalente en Windows: `&`).
- `&&` Similar al anterior, para escribir varios comandos en la misma línea, pero sólo si va bien el primero se ejecuta el segundo (equivalente en Windows: `&&` igual).

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
- **cd**: cambiar de carpeta.
- **cp**: copiar origen a destino. Una alternativa que muestra progreso y mantiene permisos es `rsync -ah --progress origen destino` (ojo: su comportamiento difiere según `/` al final de la ruta).
- **crontab**: Edita la tabla de tareas periódicas mediante `crontab -e`.
- **diff**: Compara ficheros y carpetas. `colordiff` existe como variante con colores (o `meld` como cliente gráfico).
- **df**: Mostrar ocupación de discos montados. Utilícese con `-lh` para lectura humana.
- **dmesg**: Muestra mensajes del kernel. Utiliza `tail -f /var/log/syslog` para verlo en stream continuo.
- **du**: Mostrar ocupación de subcarpetas. Utilícese con `-lh` para lectura humana, y `-s` para resumido.
- **echo**: Escribe por pantalla, útil en [scripts de bash](#scripts-de-bash).
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
   - Invertir búsqueda (encontrar lo que no lleve cadena): `grep -v "anti cadena" *`
   - Manteniendo color pese a cruzarse con un pipe `|`: `grep --color=always "cadena" * | grep -v "anti cadena"`
- **killall**: Intenta matar a un proceso, por nombre. Puedes utilizar `pkill` en su lugar para nombre incompleto.
  Por defecto, envía una [señal POSIX](https://en.wikipedia.org/wiki/Signal_(IPC)#POSIX_signals) de tipo `SIGTERM` (15), que es algo más brusco que `SIGINT` (2, típico de `CTRL-C`), sin llegar al extremo de `SIGKILL` (9).
  Se puede meter la señal como parámetro: `killall -s 9 nombre` (leer más: [1](http://programmergamer.blogspot.com.es/2013/05/clarification-on-sigint-sigterm-sigkill.html),[2](http://www.yolinux.com/TUTORIALS/C++Signals.html); listado señales: `kill -l`).
  Aquí una alternativa más compleja, metiendo números de proceso de por medio: `pgrep "nombre" | xargs kill -s 9`.
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
- **top**: Mostrar los processos en ejecución. Con colores, existe `htop`.
- **tree**: Mostrar contenidos de una carpeta en formato árbol. Con `-L` se puede especificar la profundidad, o con `-I` se puede excluir un patrón, ejemplo: `tree -I build`.
- **updatedb**: Actualiza la base de datos que utiliza **locate**

## Bucles en Bash
Existen diversas maneras de iterar en Bash:
- A través del comando `find -exec`. El operador `{}` se refiere al objeto encontrado, que puede ponerse entre comillas `"{}"` para prevenir frente a espacios en nombres. Por último, se utiliza `\;` para lanzar el comando una vez por incidencia (estilo `comando file1; comando file2; comando file3;`), o `\+` para concatenar (juntar secuencialmente en una sola línea, estilo `comando file1 file2 file3`). Ejemplos:
   - Ejemplo 1: Cambiar a permisos `664` todos los ficheros (`-type f`) de una carpeta y sus subcarpetas:
     ```bash
     find -type f -exec chmod 664 {} \;
     ```
   - Ejemplo 2: Copiar todo lo que contenga "cadena" en su nombre a otra carpeta:
     ```bash
     find -name "*cadena*" -exec cp {} /carpeta/destino  \;
     ```
   - Ejemplo 3: En todos los ficheros (`-type f`) de una carpeta y sus subcarpetas, aplicar `sed`:
     ```bash
     find -type f -exec sed -i 's/viejo/nuevo/g' {} \+
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

A continuación veremos scripts de Bash. Nótese que **si la complejidad de un script
es muy elevada, se puede considerar utilizar un script de Python en su lugar**,
puesto que a costa de su intérprete se consiguen muchas más herramientas y en 
general una sintaxis más sencilla.

## Scripts de Bash
Script se suele traducir como fichero de ejecución por lotes. Un *bash
script* es un conjunto de comandos de consola de linux que
el sistema operativo ejecuta en orden. Mucha info en <https://stackoverflow.com/tags/bash/info>.

El típico script de linux debería tener como primera línea `#!/usr/bin/env bash` ([leer más sobre shebang](https://en.wikipedia.org/wiki/Shebang_%28Unix%29#Portability)). Nótese que `#` implica comentario.

Se pueden encontrar algunos ejemplos de scripts de bash en la sección de [ficheros de configuración](configuration-files.md).

## Referencias
- https://help.ubuntu.com/community/UsingTheTerminal
- http://www.tldp.org/HOWTO/Bash-Prompt-HOWTO/
