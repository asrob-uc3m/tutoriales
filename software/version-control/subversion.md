# Subversion (SVN)

- [Acerca de SVN](#acerca-de-svn)
- [Clientes SVN](#clientes-svn)
- [Comandos básicos](#comandos-básicos)
- [Cheatsheet](#cheatsheet)
- [Más tutoriales](#más-tutoriales)

## Acerca de SVN
Apache Subversion (SVN) es un [sistema de control de versiones](README.md) centralizado (utiliza un servidor centralizado, y a veces algunos más de respaldo).

## Clientes SVN
El cliente SVN más básico es el de modo consola (en Ubuntu, se instala mediante *sudo apt install subversion*). Existen diversos clientes SVN cuya interfaz es gráfica. [Tortoise SVN](http://tortoisesvn.net/downloads) es un cliente SVN gráfico para Windows que agrega funcionalidades al menú que se despliega al pulsar el botón derecho del ratón dentro de una carpeta. Para Linux existe [RabbitVCS](http://www.rabbitvcs.org), muy semejante. [RapidSVN](http://rapidsvn.tigris.org) es un cliente SVN gráfico multiplataforma (en Ubuntu se instala con un *sudo apt-get install rapidsvn*). SVN ofrece además una inferfaz web ("http") para navegar y descargar ficheros, y se puede integrar con TRAC para ofrecer una interfaz web con más funcionalidades.

## Comandos básicos
1. Deberéis descargar el repositorio o trozo de repositorio sobre el que vais a trabajar ("check-out"). Por defecto descarga la última revisión ("HEAD").
```bash
svn co https://asrob.svn.sourceforge.net/svnroot/asrob  # Cambia la URL (http...) por la del repositorio en cuestión. Posiblemente necesites escribir tu contraseña de usuario del repositorio
```

2. A medida que generéis contenido, éste no se "agrega" al repositorio. Al comprobar el "status" del svn tecleando:
```bash
svn st
```

Si has generado ficheros nuevos, la contestación tendrá el siguiente aspecto:
```bash
? tu_fichero_nuevo1....
? tu_fichero_nuevo2....
? tu_carpeta_nueva1...
```

3. Deberás agregar todo lo nuevo:
```bash
svn add *  <- Se podría también hacerlo fichero a fichero
```

4. Viendo el "status" veréis que:
```bash
svn st

A tu_fichero_nuevo1....
A tu_fichero_nuevo2....
A tu_carpeta_nueva1...
```

Y si hay algún fichero existente modificado, aparecerá como:
```bash
svn st

M tu_fichero_modificado1....
```

5. Sólo falta subir todo al repositorio ("commit").
```bash
svn ci -m"He mejorado mi nivel de usuario SVN!"
```

El cliente de interfaz de texto de SVN exige que se escriba un mensaje que explique el porqué de los cambios realizados entre "revisión" y "revisión".

-----

Otro comando muy interesante es este, que sirve para ver la diferencia entre un fichero con una revisión pasada del mismo:

`$ svn diff -r numero_de_la_revisión_antigua fichero_con_extensión`

## Cheatsheet
- Muchas veces nos interesa ignorar cierto fichero o tipo de fichero. Podemos añadir la línea:
   ```bash
   global-ignores = *.o *.lo *.la *.al .libs *.so *.so.[0-9]* *.a *.pyc *.pyo Thumbs.db *.aux *.blg *.out *.lof *.suo build
   ```
   al fichero **config**, que en Windows se encuentra en: *C:\\Documents and Settings\\\[username\]\\Application Data\\Subversion*, y en GNU/Linux Ubuntu puede encontrarse en *~/.subversion*.
- Comando Linux para `svn rm` de ficheros que faltan ([ref](https://stackoverflow.com/questions/9600382/svn-command-to-delete-all-locally-missing-files)): `svn st | grep ^! | awk '{$1=""; print " --force \""substr($0,2)"@\"" }' | xargs svn rm`
- Configuración Linux para `svn diff` de colores: se puede agregar `diff-cmd = colordiff` (que se debe instalar, `sudo apt install colordiff`) en `.subversion/config` como se ha hecho [aquí](https://github.com/asrob-uc3m/tutoriales/commit/708348f02fe1b11cbe0982121fb6f2e098df5886).
## Más tutoriales
- http://www.hasheado.com/usando-subversion-desde-la-linea-de-comandos.html
