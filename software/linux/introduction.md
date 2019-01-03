# Introducción

- [¿Qué es Linux?](#¿qué-es-linux)
- [¿Qué es una distribución de Linux?](#¿qué-es-una-distribución-de-linux)
- [¿Qué opciones tengo para instalar una distribución?](#¿qué-opciones-tengo-para-instalar-una-distribución)
- [¿Cómo instalo una distribución en una partición nativa?](#¿cómo-instalo-una-distribución-en-una-partición-nativa)
- [¿Cómo instalo programas en Linux?](#¿cómo-instalo-programas-en-linux)
- [Atajos de teclado y ratón](#atajos-de-teclado-y-ratón)
- [Notas adicionales](#notas-adicionales)

## ¿Qué es Linux?
GNU/Linux, conocido de forma coloquial como simplemente Linux, es un sistema operativo combinación de varios proyectos, entre los cuales podemos destacar:
- El propio núcleo Linux (el kernel, cuyo desarrollo encabeza Linus Torvalds), con el cual no interactuamos directamente salvo que desarrollemos drivers (que se llaman módulos de kernel)
- Herramientas del proyecto GNU (cuyo desarrollo encabeza Richard Stallman y la Free Software Foundation), de las cuales muchas son comandos de la [consola de Linux](bash.md)
- Elementos gráficos (desde el bajo nivel de X, pasando por librerías gráficas como Qt o GTK, hasta entornos de escritorio como Unity, Cinnamon o MATE)

## ¿Qué es una distribución de Linux?
Se llama **distribución** de Linux a una colección determinada de los elementos previamente mencionados, que además viene con programas ya instalados. En la actualidad, Ubuntu goza de mucha popularidad, pero otras distribuciones pueden tener ventajas en cuanto a elección de escritorio más ligero (Lubuntu, Xubuntu, o Mint), estabilidad (Debian), o minimalismo (Arch Linux). Nótese que algunas distribuciones se basan en otras (Mint se basa en Ubuntu, y Ubuntu a su vez se basa en Debian).

## ¿Qué opciones tengo para instalar una distribución?
Existen diversas formas de instalar una distribución de Linux, entre las cuales destacan la "partición nativa" (seleccionas el sistema operativo al arranque) y la "máquina virtual" (permite, p. ej., arrancar una distribución de Linux dentro de Windows). También existe una tercera opción llamada [Subsistema de Windows para Linux (WSL)](https://docs.microsoft.com/en-us/windows/wsl/faq).

La máquina virtual puede parecer una opción atractiva puesto que es menos arriesgada (no se tocan las particiones del disco duro ni el arranque), permite experimentar rápidamente con nuevos sistemas operativos, y además permite trabajar con diferentes sistemas operativos simultáneamente. Sin embargo, no recomendamos esta opción porque hará que nuestro sistema operativo disponga de menos recursos (el procesador, la memoria, etc del sistema operativo huésped se comparten con el sistema operativo anfitrión), además de posibles problemas con: habilitación de la virtualización en BIOS, conexión de dispositivos como una cámara web USB / RGB-D o Arduino, configuración difícil adicional para redes más allá de NAT (adaptadores de puente, cortafuegos de host, etc.) y también posibles adversidades con respecto al acceso a tarjetas gráficas (p. ej., controladores NVIDIA y CUDA). Si pese a ello se quiere explorar esta opción, recomendamos Virtual Box.

A continuación detallamos la instalación de una partición nativa, que suele ser la ideal a largo plazo puesto que permite sacar el máximo rendimiento de nuestro equipo y además permite mayor interacción con hardware (cámaras, robots reales, redes, tarjetas gráficas...).

### ¿Cómo instalo una distribución en una partición nativa?
1. Haga una copia de seguridad de sus datos antes de hacer esto, recuerde que es un proceso donde se arriesga a eliminar datos de disco duro si no se siguen los pasos correctamente.
1. Espere a disponer de una una máquina adicional en caso de que su arranque no se configure correctamente en el primer intento (puede que haya horas / días adicionales para corregir, dependiendo de la experiencia).
1. Administre los tamaños de partición desde el sistema operativo original para dejar espacio vacío para el nuevo sistema operativo. Es una buena manera para evitar la pérdida de datos. En Windows la herramienta se llama `Administración de discos`.
1. Descarga la ISO. Por ejemplo, la ISO de Ubuntu se descarga en: <https://www.ubuntu.com/download/desktop>
1. Históricamente, los ISO se grabaron en CD, pero ahora creamos unidades USB de arranque. [Este bonito tutorial](https://tutorials.ubuntu.com/tutorial/tutorial-create-a-usb-stick-on-windows) a través de Windows recomienda [Rufus](http://rufus.akeo.ie/) .
1. Apague y reinicie en USB (a través de la selección de inicio o cambiando el orden de inicio en BIOS), instale la distribución.

## ¿Cómo instalo programas en Linux?
Las distribuciones, en general, cuentan con gestores de paquetes para poder instalar programas (y librerías) sin necesidad de acceder a ninguna web. En Debian y derivados (Ubuntu, Mint) el comando de consola se llama `apt`. Por ejemplo, `git` se puede instalar vía `sudo apt install git` en una [consola de Linux](bash.md). En la actualidad existen aplicaciones gráficas para interactuar con los gestores de paquetes sin utilizar la consola (p.ej. `Ubuntu Software` de Ubuntu 16.04).

## Atajos de teclado y ratón
Nótese que la mayor parte de distribuciones y programas admiten la personalización de atajos de teclado. Aquí se mencionan los atajos por defecto más comunes.

- Portapapeles "lento" y no disponible en todos los programas: `CTRL`+`c` (copiar), `CTRL`+`x` (cortar) y `CTRL`+`v` (pegar). Este portapapeles se corresponde con el del desplegable que se abre al hacer click con el botón derecho del ratón.
- Portapapeles "rápido": Simplemente seleccionar un texto (copiar), `SHIFT`+`INSERT` (pegar), o más rápido todavía _hacer click (no scroll) con el botón del medio del ratón_ (pegar).
- Doble click con el botón izquierdo del ratón: seleccionar una palabra.
- Triple click con el botón izquierdo del ratón: seleccionar una línea.
- `CTRL`+`ALT`+`t`: Abre una consola (terminal) donde se pueden utilizar comandos de [bash](bash.md). Probado en Ubuntu 10.04-16.04 (donde abre una `gnome-terminal`) y otras distribuciones.
- (requiere mecanismo `grid`, `put`, o similar): `CTRL`+`ALT`+numberPad: Mover ventana seleccionada a región de pantalla ajustándose a una rejilla determinada.
- (warning: con este atajo uno puede salirse del escritorio 1: volver vía `CTRL`+`ALT`+`1`)(requiere varios escritorios) `CTRL`+`ALT`+número: Ir al escritorio dado por el número.
- (warning: con este atajo uno puede salirse del escritorio 1: volver vía `CTRL`+`ALT`+`1`)(requiere varios escritorios) `CTRL`+`ALT`+flechas: Ir al escritorio de forma incremental, dado dirección de flecha.
- (warning: con este atajo uno puede salirse del escritorio 1: volver vía `CTRL`+`ALT`+`1`)(requiere varios escritorios) `CTRL`+`ALT`+`SHIFT+`número: Ir al escritorio dado por el número, arrastrando ventana seleccionada.
- (warning: con este atajo uno puede salirse del entorno gráfico; utilizar `CTRL`+`ALT`+`F7`/`F8` para volver, o reiniciar si no queda remedio) `CTRL`+`ALT`+`F1`/`F2`/`F3`...: acceder a *tty*s virtuales

## Notas adicionales
- Linux es en general "sensible a mayúsculas" (al contrario que en Windows, sí hace diferencia el hecho de que una misma letra se escriba con minúscula o mayúscula).
- El sistema operativo está fuertemente ligado a la consola [bash](bash.md), por lo que conviene revisar los [símbolos especiales](bash.md#símbolos-especiales), además de todas las demás secciones Linux [/software/linux](/software/linux).
- Por norma general, `.` al inicio de un nombre de fichero indica fichero oculto. Veremos esto como una práctica común entre [ficheros de configuración](configuration-files.md). En ciertos entornos (p.ej. `nautilus` en Ubuntu) pueden desocultarse/ocultarse mediante `CTRL`+`h`.
- http://ubuntuhandbook.org/index.php/2016/05/time-differences-ubuntu-1604-windows-10/
