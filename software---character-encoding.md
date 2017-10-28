# Codificación de caracteres

Para texto en inglés, la codificación de caracteres más común se llama ASCII. Para letras con acento y otros caracteres no-ASCII, existen otras codificaciones (UTF-8, ASCII extendido, ISO 8859-1,...).
Un intento de estandarización de codificación de caracteres se llama Unicode, dentro del cual la codificación más popular es el UTF-8.
La codificación de caracteres por defecto de un sistema operativo se configura en su `locale`.

Podemos utilizar `file` para descubrir la codificación de caracteres de un fichero (también llamado "tipo de fichero"). Nota: ASCII es un subconjunto de UTF-8, por lo que algunos ficheros `utf-8` pueden detectarse como `ascii-us`.

```bash
file nombre-de-fichero
```

Aquí un script de bash que lista la codificación de caracteres de todos los archivos `.txt` de una carpeta.

```bash
#!/bin/bash
for fileName in *.txt; do
    file "$fileName" --mime-encoding  # --mime-encoding da específicamente lo que buscamos
done
```

Para conversiones, podemos utilizar `iconv` o `enconv`. Comparando `iconv -l` con `enconv --list languages`, `iconv` suele dar soporte a mayor cantidad de codificaciones de caracteres.

Aquí un script de bash que crea una carpeta `utf8-versions` pasando la codificación de caracteres de todos los archivos `.txt` a UTF-8.

```bash
#!/bin/bash
mkdir -p utf8-versions
for fileName in *.txt; do
    fileEncoding=$(file "$fileName" --mime-encoding -b)  # -b omite el nombre del fichero
    iconv -f "$fileEncoding" -t utf-8//TRANSLIT "$fileName" -o utf8-versions/"$fileName";
done
```

## Referencias

- https://en.wikipedia.org/wiki/Text_file#Encoding
- https://en.wikipedia.org/wiki/ASCII
- https://es.wikipedia.org/wiki/ASCII
- https://es.wikipedia.org/wiki/Codificaci%C3%B3n_de_caracteres
- http://askubuntu.com/questions/10252/gedit-cant-recognize-character-encoding-but-gvim-can 
- https://www.tecmint.com/convert-files-to-utf-8-encoding-in-linux/
- https://stackoverflow.com/questions/11303405/force-encode-from-us-ascii-to-utf-8-iconv
