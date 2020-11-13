# Ficheros de configuración

Existen unos ficheros de configuración que están presentes por defecto en sistemas operativos basados en Linux.
Para las siguientes secciones, recuérdese que `~` equivale a `$HOME` (véase [tutorial de variables de entorno](../environment-variables.md)) y `.` al inicio significa fichero oculto (véase [introducción](introduction.md#notas-adicionales)).
Algunos ficheros de configuración son [scripts de Bash](bash.md), y estarán marcados como tal.

## ~/.profile

Este [script de Bash](bash.md) se ejecuta automáticamente al arrancar el sistema operativo, por lo que sus cambios aplican a todas las consolas además de lo gráfico. Podemos ampliarlo con algunas funcionalidades mediante las siguientes líneas:

```bash
# Montar algún disco duro al arranque (sustituir sdx1 por nombre del dispositivo más el número de partición)
# /usr/bin/udisks --mount /dev/sdx1  # Sistemas antiguos, parte de udisks1
/usr/bin/udisksctl mount -b /dev/sdx1  # Sistemas modernos, parte de udisks2
```
Nota: Tocar con cuidado, puesto que puede darse el caso de que frene el arranque si metemos algo bloqueante. Existen alternativas como `/etc/rc.local` o servicios/daemontools con opciones más avanzadas.

## ~/.bashrc

Este [script de Bash](bash.md) se ejecuta automáticamente al lanzar cada consola, por lo que sus cambios quedan dentro de cada consola. Unas líneas convenientes a agregarle son [estas](https://github.com/asrob-uc3m/tutoriales/blob/master/assets/dotfiles/.bashrc-asrob). Se puede descargar y hacer que se ejecute como parte de `~/.bashrc` con:
```
wget https://raw.githubusercontent.com/asrob-uc3m/tutoriales/master/assets/dotfiles/.bashrc-asrob -O ~/.bashrc-asrob
cp ~/.bashrc ~/.bashrc.orig
echo "source ~/.bashrc-asrob" >> ~/.bashrc
```

## ~/.inputrc

Afecta al autocompletado de la consola. Se puede descarga e instalar en `~/` con [este](https://github.com/asrob-uc3m/tutoriales/blob/master/assets/dotfiles/.inputrc) contenido de búsqueda incremental ([fuente](https://help.ubuntu.com/community/UsingTheTerminal#An_extremely_handy_tool_::_Incremental_history_searching)):
```
cp ~/.inputrc ~/.inputrc.orig
wget https://raw.githubusercontent.com/asrob-uc3m/tutoriales/master/assets/dotfiles/.inputrc -O ~/.inputrc
```

## ~/.dircolors

Afecta al color de los listados de `ls`. Se puede descarga e instalar en `~/` con [este contenido](https://github.com/asrob-uc3m/tutoriales/blob/master/assets/dotfiles/.dircolors) que mejora los colores con sistemas de ficheros NTFS:
```
cp ~/.dircolors ~/.dircolors.orig
wget https://raw.githubusercontent.com/asrob-uc3m/tutoriales/master/assets/dotfiles/.dircolors -O ~/.dircolors
```
