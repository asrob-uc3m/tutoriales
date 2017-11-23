Cuando utilizamos

`sudo apt-get install <`<nombre_paquete>`>`

los ficheros del paquete se instalan dentro de /usr/ en las carpetas:

`* bin: ejecutables (programas, 'bin' viene de 'binarios')`  
`* include: cabeceras de librerías (léase `[`Librerías`` ``Estáticas``
``y`` ``Dinámicas`](Librerías_Estáticas_y_Dinámicas "wikilink")`)`  
`* lib: librerías compiladas (léase `[`Librerías`` ``Estáticas`` ``y``
``Dinámicas`](Librerías_Estáticas_y_Dinámicas "wikilink")`)`  
`* share: archivos de configuración y otros recursos`

En cambio, cuando instalamos de fuente (make; sudo make install) lo más
habitual es que INSTALL\_PREFIX esté fijado en /usr/local. Esto es, los
ejecutables se instalan en /usr/local/bin en lugar de /usr/bin, etc.
