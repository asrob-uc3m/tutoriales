# Codificación de caracteres

Para texto en inglés, la codificación de caracteres más común se llama ASCII. Para letras con acento y otros caracteres no-ASCII, existen otras codificaciones (UTF-8, ASCII extendido, ISO 8859-1,...).
Un intento de estandarización de codificación de caracteres se llama Unicode, dentro del cual la codificación más popular es el UTF-8.
La codificación de caracteres por defecto de un sistema operativo se configura en su `locale`.

## Descubrir la codificación de caracteres de un fichero

Podemos utilizar `file` para descubrir la codificación de caracteres de un fichero (también llamado "tipo de fichero"). Nota: ASCII es un subconjunto de UTF-8, por lo que algunos ficheros `utf-8` pueden detectarse como `ascii-us`.

```bash
file nombre-de-fichero
```

Para abreviar la salida, se puede omitir el nombre del fichero via `-b` y el terminador de línea vía `--mime-encoding`:

```bash
file nombre-de-fichero -b --mime-encoding
```

Para mostrar `file` de todos los archivos de una carpeta:

```bash
file *
```

Para mostrar `file` de todos los archivos `.txt` de una carpeta y sus contenidos.

```bash
find -name "*.txt" -exec file {} \;
```

Para ver si hay algún fichero `.txt` que no esté en `utf-8` ni `us-ascii`.

```bash
find -name "*.txt" -exec file {} \; | grep -vi ascii | grep -vi utf-8

```

## Convertir la codificación de caracteres de un fichero

Para conversiones, podemos utilizar `iconv` o `enconv`. Comparando `iconv -l` con `enconv --list languages`, `iconv` suele dar soporte a mayor cantidad de codificaciones de caracteres.

Aquí un script de bash que crea versiones UTF-8 de todos los ficheros `.txt` de una carpeta, guardándolas en una carpeta nueva llamada `utf8-versions`.

```bash
#!/bin/bash
mkdir -p utf8-versions
for fileName in *.txt; do
    fileEncoding=$(file "$fileName" --mime-encoding -b)  # -b omite el nombre del fichero
    iconv -f "$fileEncoding" -t utf-8//TRANSLIT "$fileName" -o utf8-versions/"$fileName";
done
```

Nota: Los editores de texto suelen permitir el modificar la codificación de caracteres de un archivo que se está editando. En `gedit`, aparece en la parte inferior al `Guardar como...`. En [Vim (editor de texto)](../writing/vim.md), está en `Edit`->`File Settings`->`File Format...`, o se puede escribir `:set fileformat=unix` o `:set fileformat=dos`.

## Convertir terminadores de línea

El comando `file` también nos da información sobre terminadores de línea. Notepad hasta [2018](https://devblogs.microsoft.com/commandline/extended-eol-in-notepad/) sólo reconocía CR, LF (CRLF: 0x0d, 0x0a) como final de línea. El comando `unix2dos` se usaba para asegurarnos que todas las líneas acaban en este CRLF y así ser compatibles con ese antiguo Notepad, sin tener que abandonar UTF-8. Existe el comando `dos2unix` para la conversión inversa.

## Referencias

- <https://en.wikipedia.org/wiki/Text_file#Encoding>
- <https://en.wikipedia.org/wiki/ASCII>
- <https://es.wikipedia.org/wiki/ASCII>
- <https://es.wikipedia.org/wiki/Codificaci%C3%B3n_de_caracteres>
- <http://askubuntu.com/questions/10252/gedit-cant-recognize-character-encoding-but-gvim-can>
- <https://www.tecmint.com/convert-files-to-utf-8-encoding-in-linux/>
- <https://stackoverflow.com/questions/11303405/force-encode-from-us-ascii-to-utf-8-iconv>
- <https://www.cyberciti.biz/faq/howto-unix-linux-convert-dos-newlines-cr-lf-unix-text-format/>
- <https://superuser.com/questions/362087/notepad-ignoring-linebreaks>
- <https://softwareengineering.stackexchange.com/questions/152780/should-my-source-code-be-in-utf-8>
