# Lenguaje de marcado: MARKDOWN

Listado de recetas para la sintaxis de Markdown.

- [Tablas](#tablas)
- [Listado de tareas](#lista-de-tareas)
- [Encabezados](#encabezados)
- [Cursivas](#cursivas)
- [Negrita](#negrita)
- [Negrita y cusiva](#negrita-y-cursiva)
- [Link](#link)
- [Imágenes](#imágenes)
- [Movimiento en ruta](#movimiento-en-ruta)
- [Menciones](#menciones)
- [Comentarios de código](#comentarios-de-código)
- [Indices y puntos](#Índices-y-puntos)

## Tablas
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

## Lista de tareas
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
## Encabezados

Ejemplo de encabezados.

# Nivel 1
## Nivel 2
### Nivel 3
#### Nivel 4

Código:

```
# Nivel 1
## Nivel 2
### Nivel 3
#### Nivel 4

```

## Cursivas
Ejemplo de cursivas.

*Mensaje de prueba*

Código:

`*Mensaje de prueba*`

## Negrita
Ejemplo de negrita.

**Mensaje de prueba**

Código:

`**Mensaje de prueba**`

## Negrita y cursiva
Ejemplo de negrita y cursiva.

***Mensaje de prueba***

Código:

`***Mensaje de prueba***`

## Link
Ejemplo de link.

[link](www.google.es)

Código:

`[link](www.google.es)`

## Imágenes
Ejemplo de imágen.

![Nombre de la imagen en caso de no cargar](http://www.analiticaweb.es/wp-content/uploads/2017/02/markdown.jpg)

Código:

```
![Nombre de la imagen en caso de no cargar](http://www.analiticaweb.es/wp-content/uploads/2017/02/markdown.jpg)
```

## Movimiento en ruta
Ejemplo movimientos en ruta.

* Adelante

Ejemplo adelante.

[nombre enlace](./ruta a ir)

Código:

```
[nombre enlace](./ruta a ir)
```

* Atrás

Ejemplo atrás.

[nombre enlace](../)

Código:
```
[nombre enlace](../)
```

## Menciones
Menciones mediante `@nombredeusuario`
Ejemplo:

@davidvelascogarcia

## Comentarios de código

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

## Índices y puntos

* Índices
Mediante:

1. Elemento 1
	1.Subelemto 1
	2.Subelemento 2
	1. Subsubelemento 1
2. Elemento 2
3. Elemento 3

Código:

```
1. Elemento 1
	1.Subelemto 1
	2.Subelemento 2
	1. Subsubelemento 1
2. Elemento 2
3. Elemento 3
```

* Puntos
Mediante:

* Elemento 1
	* Subelemto 1
	* Subelemento 2
		*  Subsubelemento 1
* Elemento 2
* Elemento 3

Código:

```

* Elemento 1
	* Subelemto 1
	* Subelemento 2
		*  Subsubelemento 1
* Elemento 2
* Elemento 3
```
