# Estructura de carpetas en Debian y derivados (Ubuntu, Mint...)

Cuando utilizamos `sudo apt-get install nombre_paquete`, los ficheros del paquete se instalan dentro de `/usr/` en las carpetas:

* **bin**: ejecutables (programas, `bin` viene de "binarios")
* **include**: cabeceras de librerías (léase [Librerías Estáticas y Dinámicas](../programming/libs.md))
* **lib**: librerías compiladas (léase [Librerías Estáticas y Dinámicas](../programming/libs.md))
* **share**: archivos de configuración y otros recursos

En cambio, cuando instalamos de fuente (`make && sudo make install`) lo más habitual es que `INSTALL_PREFIX` esté fijado en `/usr/local`. Esto es, los ejecutables se instalan en `/usr/local/bin` en lugar de `/usr/bin`, etc.
