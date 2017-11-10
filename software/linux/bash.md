# Bash (consola de linux)

En Ubuntu 10.04 - 14.10 y otras distribuciones, se puede acceder a una consola (`gnome-terminal` en este caso) a través de la combinación de teclas `CTRL`+`ALT`+`t`. También se puede acceder a *tty*s virtuales con `CTRL`+`ALT`+`F1`/`F2`/`F3`... y `CTRL`+`ALT`+`F7`/`F8` para volver al entorno gráfico.

## El comando `man`

Con `man *nombreComando*` (e **info nombreComando**) aparece el manual
del comando. Dentro del manual, se puede buscar con **/** (esto es,
*/cadenaDeTexto*, como en [vim](../../writing/vim.md)). Se compone de
diferentes secciones, del 1 al 8, donde el 3 se centra en la librería C
estándar (que además muestra el \#include necesario). Se puede forzar ir
a la entrada de una sección, por ejemplo *man 3 scanf* (aunque
funcionaría sin el *3* al no tratarse de una entrada
duplicada).

## Listado alfabético de comandos útiles

Estos comandos, en general, también son aplicables a gnome-terminal, bash, sh, xterm..

  - **apt-cache search**: en Debian/Ubuntu/Mint, da el nombre de los
    paquetes que contienen los metadatos que se buscan (versión,
    dependencias, descripción, etc.).
  - **apt-file search**: en Debian/Ubuntu/Mint, da el nombre de los
    paquetes que contienen el fichero que se busca.
  - **apt-get install**: en Debian/Ubuntu/Mint, instala un paquete, que
    puede ser un programa o librería (e.g. de nombre lib*librería*-dev).
    Suele requerir **sudo** delante.
  - **cd**: cambiar de carpeta.
  - **cp**: copiar origen a destino.
  - **echo**: Escribe por pantalla.
  - **find**: Busca ficheros que cumplan un criterio (nombre,
    tamaño...).
      - Uso básico (buscar fichero por nombre): **find -name
        fichero.txt**
      - Buscar fichero por nombre sin importar mayúsculas/minúscula:
        **find -iname fichero.txt**
  - **grep**: Busca texto contenido en ficheros.
      - Uso básico: **grep "cadenaDeTexto" fichero.txt**
      - En todos los ficheros de una carpeta: **grep "cadenaDeTexto"
        \***
      - En todos los ficheros de una carpeta y sus subcarptas: **grep -r
        "cadenaDeTexto" \***
      - En todos los ficheros de una carpeta y sus subcarptas sin
        importar mayúsculas/minúsculas de la cadena: **grep -ri
        "cadenadetexto" \***
      - En todos los ficheros con extensión .cpp de una carpeta y sus
        subcarptas sin importar mayúsculas/minúsculas de la cadena:
        **grep -ri "cadenadetexto" --include \*.cpp**
  - **locate**: Parecido al find. Busca ficheros de forma general y
    rápida porque usa la base de datos de **updatedb**.
  - **ls**: Ver contenido de carpeta.
  - **mkdir**: crear una carpeta
  - **mv**: mover origen a destino
  - **rename**: --no-act 's/^imagen/image/' \* ((^ -\> sólo al
    principio))
  - **rm**: borrar (con -r para recursivo (entra en subcarpetas), -rf
    recursivo forzado))
  - **sed**: Se puede utilizar reemplazar texto en un fichero
    (**utilizar con cuidado\!\!\!**).
      - Previsualización (vuelca por pantalla sin realizar cambios):
        **sed "s/viejo/nuevo/g" fichero.txt**
      - Uso básico: **sed -i "s/viejo/nuevo/g" fichero.txt**
      - En todos los ficheros de una carpeta: **sed -i "s/viejo/nuevo/g"
        \***
  - **setxkbmap**: Cambiar la configuración del teclado. Por ejemplo, a
    español: **setxkbmap es,es** (sin X: **sudo loadkeys --verbose es**)
  - **sudo**: Realizar el comando que se escribe en la misma línea con
    permisos de administrador.
  - **updatedb**: Actualiza la base de datos que utiliza **locate**

## Bucles en Bash
   - Grep en todos los ficheros de una carpeta y sus subcarptas: **find -type f -exec sed -i 's/viejo/nuevo/g' {} +**
