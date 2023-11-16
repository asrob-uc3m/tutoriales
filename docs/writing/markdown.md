# Markdown

Markdown es un lenguaje de marcado (tipo de formateo de texto más o menos estandarizado, que ocupa poco espacio y es fácil de editar con un editor de texto) que permite incluir enlaces, tablas, listados, etc, en un texto de forma sencilla.

## Editores, previsualizadores, generadores de webs

### Editores WYSIWYG

- [haroopad](http://pad.haroopress.com/): The Next Document processor based on Markdown
- [wereturtle/ghostwriter](https://github.com/wereturtle/ghostwriter): A cross-platform, aesthetic, distraction-free Markdown editor

### Previsualizadores

- Calibre viewer
- GitHub: Se puede utilizar tanto dentro de ficheros `.md` como en los comentarios de las propias `Issues`. La especificación dentro de GitHub se llama [GFM](https://github.github.com/gfm/)

### Generadores de webs

- [GitBook](https://robots.uc3m.es/installation-guides/install-gitbook.html) ([perma](https://github.com/roboticslab-uc3m/installation-guides/blob/09ffe48fd158656bb6359b4f3969948d2a94d4cd/install-gitbook.md)), oficial: [GitBook](https://github.com/GitbookIO/gitbook)
- [Jekyll](https://jekyllrb.com)

## Herramientas

### wiki -> markdown

- `pandoc`, véase <https://github.com/asrob-uc3m/tutoriales/issues/2#issue-273074070>

### portapapeles -> markdown

- <https://euangoddard.github.io/clipboard2markdown/>

### Auto-generación de tabla de contenidos (Table Of Contents, TOC)

Véase [roboticslab-uc3m/questions-and-answers#64](https://github.com/roboticslab-uc3m/questions-and-answers/issues/64):

- Plugin [GitBook](https://robots.uc3m.es/installation-guides/install-gitbook.html) ([perma](https://github.com/roboticslab-uc3m/installation-guides/blob/09ffe48fd158656bb6359b4f3969948d2a94d4cd/install-gitbook.md)):
    - [aleung/gitbook-plugin-page-toc](https://github.com/aleung/gitbook-plugin-page-toc): <https://www.npmjs.com/package/gitbook-plugin-page-toc>
- [jonschlinkert/markdown-toc](https://github.com/jonschlinkert/markdown-toc) (Node.js)
- [ekalinin/github-markdown-toc](https://github.com/ekalinin/github-markdown-toc) (bash)
- [ekalinin/github-markdown-toc.go](https://github.com/ekalinin/github-markdown-toc.go) (go)
- <http://doctoc.herokuapp.com/>
- [rossant/awesome-math/build_toc.py](https://github.com/rossant/awesome-math/blob/master/build_toc.py)

## Ejemplos

### Enlaces

Ejemplo de enlace (link).

[link](https://www.google.es)

Código:

`[link](https://www.google.es)`

Ejemplo de enlace con movimientos en ruta. Ejemplo adelante.

[nombre enlace](./ruta a ir)

Código:

```
[nombre enlace](./ruta a ir)
```

Ejemplo de enlace con movimientos en ruta. Ejemplo atrás.

[nombre enlace](../)

Código:
```
[nombre enlace](../)
```

### Tablas

Ejemplo de tablas.

| Elemento 1 | Elemento 2 | Elemento 3 |
| ---------- | ---------- | ---------- |
| Elemento 1 | Elemento 2 | Elemento 3 |
| Cosa 1| Cosa 2|Cosa3|Cosa|

Código:
```
| Elemento 1 | Elemento 2 | Elemento 3 |
| ---------- | ---------- | ---------- |
| Elemento 1 | Elemento 2 | Elemento 3 |
| Cosa 1| Cosa 2|Cosa3|Cosa|
```

### Encabezados

Ejemplo de encabezados.

### Nivel 3
#### Nivel 4

Código:

```
### Nivel 3
#### Nivel 4

```

### Cursivas

Ejemplo de cursivas.

*Mensaje de prueba*

Código:

```
*Mensaje de prueba*
```

### Negrita

Ejemplo de negrita.

**Mensaje de prueba**

Código:

```
**Mensaje de prueba**
```

### Negrita y cursiva

Ejemplo de negrita y cursiva.

***Mensaje de prueba***

Código:

```
***Mensaje de prueba***
```

### Imágenes

Ejemplo de imágen.

![Nombre de la imagen en caso de no cargar](http://www.analiticaweb.es/wp-content/uploads/2017/02/markdown.jpg)

Código:

```
![Nombre de la imagen en caso de no cargar](http://www.analiticaweb.es/wp-content/uploads/2017/02/markdown.jpg)
```

### Comentarios de código

El comentario de código.

1.  En una línea.

* Si se trara de comentar un fragmento en una línea mediante apertura y cerrado del mensaje a comentar con `

Ejemplo:

`Mensaje a comentar`

Código:

```
`Mensaje a comentar`
```

2.  Varias líneas.

* Si se trara de comentar un fragmento en varias líneas mediante apertura y cerrado del mensaje a comentar con ```


Ejemplo:

```
Mensaje a comentar
```

### Índices y puntos

* Índices

Mediante:

1. Elemento 1
    1. Subelemento 1
    1. Subelemento 2
        1. Subsubelemento 1
1. Elemento 2
1. Elemento 3

Código:

```
1. Elemento 1
    1. Subelemento 1
    1. Subelemento 2
        1. Subsubelemento 1
1. Elemento 2
1. Elemento 3
```

* Puntos

Mediante:

* Elemento 1
    * Subelemento 1
    * Subelemento 2
        * Subsubelemento 1
* Elemento 2
* Elemento 3

Código:

```
* Elemento 1
    * Subelemento 1
    * Subelemento 2
        * Subsubelemento 1
* Elemento 2
* Elemento 3
```

### Lista de tareas (GitHub)

Ejemplo lista de tareas.

- [ ] Elemento 1
- [ ] Elemento 2
- [ ] Elemento 3

Código:

```
- [ ] Elemento 1
- [ ] Elemento 2
- [ ] Elemento 3

```

### Menciones (GitHub)

Menciones mediante `@nombredeusuario`. Ejemplo:

```
@nombredeusuario
```
