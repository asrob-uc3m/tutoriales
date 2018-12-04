# Redactar

* [Herramientas](#herramientas)
* [Índice del documento](#Índice-del-documento)
* [Estado del arte](#estado-del-arte)
* [Bibliografía](#bibliografía)
* [Formato (Importante)](#formato-importante)
   * [Formato de figuras](#formato-de-figuras)
   * [Formato de bibliografía](#formato-de-bibliografía)
   * [Formato de ecuaciones](#formato-de-ecuaciones)
   * [Formato de tablas](#formato-de-tablas)
* [Código fuente](#código-fuente)
* [Úlitmos consejos](#Úlitmos-consejos)
* [Más enlaces de interés](#más-enlaces-de-interes)

## Herramientas
Para redactar, existen dos herramientas populares: [Microsoft Word](https://es.wikipedia.org/wiki/Microsoft_Word), y [LaTeX](http://es.wikipedia.org/wiki/LaTeX). Microsoft Word es más visual, y LaTeX se parece más a programar. Una ventaja de LaTeX es que es Open Source, por tanto, si falla algo, puede ser difícil, pero tienes la posibilidad de arreglarlo.

**UC3M (plantillas, documentación...)**: Existe mucha documentación en webs oficiales ([1](https://www.uc3m.es/ss/Satellite/SecretariaVirtual/es/TextoMixta/1371210936260/Trabajo_de_Fin_de_Grado#defensa)), Campus Global, y en UC3M/Biblioteca ([2](http://uc3m.libguides.com/TFG))([3](http://uc3m.libguides.com/TFM)). Además de estos, mirar nuestros recursos digitales: https://github.com/asrob-uc3m/recursos-digitales (incluyen plantillas, [Matriz de Criterios de Evaluación de PFCs de la UC3M](https://github.com/asrob-uc3m/recursos-digitales/blob/master/plantillas/uc3m_matriz_de_evaluacion_9_febrero_2018.pdf), hoja [Excel para presupuestos](https://github.com/asrob-uc3m/recursos-digitales/blob/master/plantillas/Formulario_PresupuestoPFC-TFG.xlsx)...)

## Índice del documento
- Una profundidad de índice admisible es hasta 3 subniveles (sección 2.3.4), aunque luego en el documento se desglosen más (sección 2.3.4.c).
- Cantidad de páginas por capítulo compensado (no tiene sentido que un capítulo sea de 80 páginas y otro de 3).
- Aquí un ejemplo de índice:
  1.  Introducción (con introducción, objetivos, estructura del documento)
  2.  [Estado del arte](#estado-del-arte) A+B+C
  3.  Arquitectura global (aquí entra bien un diagrama de flujo general)
  4.  Desarrollo A
  5.  Desarrollo B
  6.  Desarrollo C
  7.  Experimentos y resultados
  8.  Conclusiones y líneas futuras (con conclusiones y líneas futuras)
- [Bibliografía](#bibliografía)
- Anexos (sí: presupuesto)(posible: partes relevantes de datasheets)(no: códigos fuentes completos, véase sección [código fuente](#código-fuente)).

## Estado del arte
- El estado del arte de un documento científico debería consistir en referencias a documentos científicos que componen la [Bibliografía](#bibliografía), tanto por que sean útiles o porque posteriormente se debata que se hayan superado. También debería servir para explicar alternativas software o hardware, como apoyo para justificar decisiones de diseño que se tomen más adelante en el documento.

## Bibliografía
- Existen muchos gestores de referencias bibliográficas: [Mendeley](https://www.mendeley.com/) (que dispone de plugins para Microsoft Word y LibreOffice, y puede exportar ficheros `.bib` para LaTeX), Zotero... En LaTeX se recomienda trabajar con ficheros `.bib` que genera ficheros `.bbl` mediante el comando `bibtex` (frente a la alternativa de directamente manipular los elementos `\bibitem` del `.bbl`).
- URLs (blogs, foros, webs...). En principio, tratar de evitar este tipo de referencias bibliográficas. Muchas veces se puede encontrar un documento científico que describe el mismo contenido (p.ej. la wikipedia muchas veces cita artículos científicos como fuente).
- Tratar de utilizar siempre bibliografía científica, que debe componerse principalmente de contenidos de años recientes (aunque puede contener algunas referencias clásicas). En general nuestra proporción será de más proceedings que journals precisamente por la búsqueda de material reciente:
   - Journals: Artículos de revistas científicas. Pasan por procesos de revisión por pares en general largos y con varias iteraciones, por tanto suelen ser largos, descriptivos e informativos. Los journals "top" están indexados en Journal Citation Reports (JCR), donde a su vez cada categoría se desglosa en cuartiles (y el "top" es Q1). Robótica: [IJRR](https://journals.sagepub.com/home/ijr), [T-RO](http://www.ieee-ras.org/publications/t-ro)...
   - Proceedings de conferencias: Artículos que se presentan en conferencias científicas. En general, con contenido más actual y breve que journals. Los proceedings "top" están indexados en Web of Science (WOS). Robótica: [IROS](http://iros.org/), [ICRA](http://www.ieee-ras.org/conferences-workshops/fully-sponsored/icra), [RSS](http://www.roboticsconference.org), HUMANOIDS, HRI, ROMAN... (ver web de [IEEE-RAS](https://ras.papercept.net)). Inteligencia Artificial y Computer Vision: [NeurIPS](https://neurips.cc) (ex-[NIPS](https://nips.cc)), [ICML](https://icml.cc), ECCV, CVPR, SOCML... (ver web de [handong1587](https://handong1587.github.io)). Computer Graphics: [SIGGRAPH](https://www.siggraph.org). Signal Processing: ICASSP.
- Para localizar bibliografía científica, utiliza buscadores como [Google Académico](http://scholar.google.es) o [IEEExplore](http://ieeexplore.ieee.org/Xplore/guesthome.jsp?reload=true) que dispongan de la opción de importar citas a bibtex o semejante.
   - **UC3M (acceso a buscadores JCR y WOS)**: Puedes acceder a los buscadores JCR dentro de [UC3M > Biblioteca > Ińdices de impacto](https://www.uc3m.es/ss/Satellite/Biblioteca/es/TextoMixta/1371212970020/Indices_de_impacto) > "Journal Citation Reports (JCR)" o "Web of Science"
   - **UC3M (acceso estos recursos desde fuera de las redes del campus)**: Las subscripciones de la Biblioteca (p.ej. IEEExplore, JCR y WOS) funcionan de forma automática para dentro de las redes de los campus (cable, `WiFi-UC3M`, `eduroam` en campus). Para acceder externamente, puedes utilizar el servicio [VPN](https://www.uc3m.es/sdic/servicios/vpn).
- Véase también la sección de [formato de citas bibliográficas](#formato-de-citas-bibliográficas).

## Formato (Importante)
- Respecto a títulos de documento/capítulo/secciones: "Esto es un título en español". "This Is A Title In English". Ninguno acaba en punto.
- Como norma general, ceñirse a las plantillas, sin modificar márgenes ni introducir excesivos modificadores de formato. La inclusión de ciertos paquetes de LaTeX también pueden crear conflictos.
- Texto justificado (no alineado a izquierda).
- Evitar faltas de ortografía/gramática.
- Evitar faltas en la puntuación: espacio después de punto, etc. Cuidado en mayúsculas/minúsculas.
- Evitar la reutilización de frases completas de otros documentos (copia+pega). Incluso las licencias más abiertas piden que se cite la fuente original.
- Utilizar frases cortas. Como regla general, se puede pensar "no más de un concepto por frase, tal vez más de una frase para explicar un solo concepto".
- Coherencia interna. Ejemplo 1: MTi debe aparecer siempre como MTi, no MTI a veces. Ejemplo 2: Un algoritmo es siempre un algoritmo, no pasa a ser un método o infraestructura en un mismo documento.
- Evitar extranjerismos sin referenciar (p.e. si el documento está en español, como mínimo poner pie de página ante anglicismos).

### Formato de figuras
- Centradas.
- Sin deformar (conservar proporciones originales).
- Texto explicativo debajo y también centrado.
- Figuras siempre referenciadas. Si es posible, cerca de la propia figura, y antes de aparecer.
- Figuras vectoriales. Siempre que se pueda (logotipos, diagramas de flujo, etc) crear y utilizar imágenes de tipo vectorial. Estas imágenes no se pixelan con cambios de zoom. Se recomienda Inkscape como la alternativa libre referencia (existen alternativas propietarias como Adobe Illustrator o Corel). Para generar diagramas, tanto yEd (freeware) como Dia (libre) son buneas opciones (también pensar en <https://mermaidjs.github.io/>). Powerpoint también puede exportar a formatos vectoriales. El formato vectorial editable más recomendable es el `.svg` de Inkscape, o los propios de cada programa. Para incrustar en documentos LaTeX (`pdflatex`), se recomienda exportar a PDF. Para incrustar en documentos Word, se recomienda exportar a EMF (o WMF si sale mal)(disponible en versión Windows de Inkscape).
- A veces debemos volver a generar las referencias cruzadas para que se actualice el orden.
- Un buscador para imágenes libres: <http://search.creativecommons.org/>
- **UC3M**: Aquí un enlace con logos en vectorial: <https://github.com/asrob-uc3m/recursos-digitales/tree/master/logos>

### Formato de bibliografía
- Es necesario que todos los elementos de la bibliografía estén referenciados.
- La regla general es citar la referencia sólo la primera vez que aparece. Excepciones: no se introduce en el resumen/abstract (sí en la introducción); se puede volver a citar cuando ha pasado un cierto número de páginas (p.ej. capítulos diferentes).
- Se deja un espacio entre la palabra y la referencia, como se hace en esta frase \[1\]. Es recomendable, además, que esta frase pueda leerse habiendo omitido la referencia (p.antiejemplo: léase \[3\] y \[16\]).
- Existen diversos formatos para citar (APA, etc). Para aquellos que son numéricos, el orden de los elementos debe ser el de aparición en el documento (a veces debemos volver a generar las referencias cruzadas para que se actualice)(nota: ciertos autores prefieren orden alfabético).
- URLs: Se comentó en [bibliografía](#bibliografía) que se debe tratar de evitar este tipo de referencias bibliográficas. En caso de ser realmente necesario, es obligatorio poner la fecha de acceso: "(último acceso 22 de febrero de 2011)", y es preferible que sea un pie de página en lugar de un elemento de la bibliografía como tal.

### Formato de ecuaciones
- Referencias entre paréntesis (no corchetes).

### Formato de tablas
- Centradas.
- Texto explicativo normalmente encima y también centrado.

## Código fuente
- Bulto de código fuente: La tendencia es no incluir bultos de código en una memoria, ni siquiera como anexo. Se sube a un lugar y se proporcional la URL.
- Fragmentos de código fuente: Los fragmentos de código fuente en teoría no deberían ir como figuras. Específicamente, en LaTex, se suele utilizar el mecanismo [`listing`](https://en.wikibooks.org/wiki/LaTeX/Source_Code_Listings). `listing` tiene muchas opciones, incluida la de poner un marco alrededor y sintaxis (pone colores cual IDE, indicándole si es Python, JSON, etc).
- Recomendación: Incluir diagramas (de flujo, UML, etc), que sí son figuras (y aplican las recomendaciones de la sección [figuras](#figuras)). Para trabajos con software en lenguajes de programación orientados a objetos (OOP), los diagramas de clases son casi indispensables.
- También es un plus incluir un enlace a la documentación generada por [Doxygen](http://www.doxygen.nl/) (que además se puede configurar para generar distintos diagramas).

## Úlitmos consejos
- Se empezó a realizar un script que revisa textos en inglés [aquí](https://github.com/jgvictores/snippets/blob/develop/bash/review-tex.sh) ([permalink](https://github.com/jgvictores/snippets/blob/8db93e72b29279ffa959e5b72287ab8e0129fa16/bash/review-tex.sh)).
- ¡Releer el documento entero mínimo una vez\!

## Más enlaces de interés
- Consejos generales para la [presentación de un documento](http://asrob.uc3m.es/index.php/Presentar).
