# Introducción

- [¿Qué es Linux?](#qué-es-linux)
- [¿Qué es una distribución de Linux?](#qué-es-una-distribución-de-linux)
- [Instalar programas](#instalar-programas)
- [Atajos de teclado y ratón](#atajos-de-teclado-y-ratón)
- [Notas adicionales](#notas-adicionales)

## ¿Qué es Linux?
GNU/Linux, conocido de forma coloquial como simplemente Linux, es un sistema operativo combinación de varios proyectos, entre los cuales podemos destacar:
- El propio núcleo Linux (el kernel, cuyo desarrollo encabeza Linus Torvalds), con el cual no interactuamos directamente salvo que desarrollemos drivers (que se llaman módulos de kernel)
- Herramientas del proyecto GNU (cuyo desarrollo encabeza Richard Stallman y la Free Software Foundation), de las cuales muchas son comandos de la [consola de Linux](bash.md)
- Elementos gráficos (desde el bajo nivel de X, pasando por librerías gráficas como Qt o GTK, hasta entornos de escritorio como Unity, Cinnamon o MATE)

## ¿Qué es una distribución de Linux?
Se llama **distribución** a una colección determinada de los elementos previamente mencionados. En la actualidad, Ubuntu goza de mucha popularidad, pero otras distribuciones pueden tener ventajas en cuanto a elección de escritorio más ligero (Lubuntu, Xubuntu, o Mint), estabilidad (Debian), o minimalismo (Arch Linux). Nótese que algunas distribuciones se basan en otras (Mint se basa en Ubuntu, y Ubuntu a su vez se basa en Debian).

## Instalar programas
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
