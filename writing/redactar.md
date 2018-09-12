# Redactar

* [Herramientas](#herramientas)
* [Índice del documento](#Índice-del-documento)
* [Estado del arte](#estado-del-arte)
* [Bibliografía](#bibliografía)
* [Formato (Importante)](#formato-importante)
* [Figuras](#figuras)
* [Tablas](#tablas)
* [Código fuente](#código-fuente)
* [Úlitmos consejos](#Úlitmos-consejos)
* [Más enlaces de interés](#más-enlaces-de-interés)

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
- Existen muchos gestores de bibliografía: [Mendeley](https://www.mendeley.com/) (que dispone de plugins recomendables para Microsoft Word y LibreOffice), Zotero... En LaTeX, se puede utilizar uno de estos gestores, o trabajar directamente sobre el archivo .bib (no se recomienda trabajar sobre el .bbl sino generarlo con bibtex a partir del .bib).
- Es necesario que todos los elementos de la bibliografía estén referenciados.
- El orden de los elementos debe ser el de aparición en el documento (ciertos autores prefieren orden alfabético).
- Tratar de evitar bibliografía del que solo se disponga una URL (foros, webs...). En caso de ser realmente necesario, es obligatorio poner la fecha de acceso: "(último acceso 22 de febrero de 2011)", y en general es casi preferible que sea simplemente un pie de página.
- En lugar de foros o webs, tratar de utilizar bibliografía científica: preferiblemente "Journals" (preferiblemente indexados en Journal Citation Reports (JCR)), o "Proceedings of Conferences" (preferiblemente indexados en Web of Science (WOS)) si no.
- Para localizar bibliografía científica, utiliza buscadores como [Google Académico](http://scholar.google.es) o [IEEExplore](http://ieeexplore.ieee.org/Xplore/guesthome.jsp?reload=true) que dispongan de la opción de importar citas a bibtex o semejante.

**UC3M (acceso a buscadores JCR y WOS)**: Puedes acceder a los buscadores JCR dentro de [UC3M > Biblioteca > Ińdices de impacto](https://www.uc3m.es/ss/Satellite/Biblioteca/es/TextoMixta/1371212970020/Indices_de_impacto) > "Journal Citation Reports (JCR)" o "Web of Science"

**UC3M (acceso externo a recursos)**: Las subscripciones de la Biblioteca (p.ej. IEEExplore, JCR y WOS) dentro de las redes de los campus. Puedes acceder externamente a través de la VPN.

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
- Respecto a citas bibliográficas:
  - La regla general es citar la referencia sólo la primera vez que aparece. Excepciones: no se introduce en el resumen/abstract (sí en la introducción); se puede volver a citar cuando ha pasado un cierto número de páginas (p.ej. capítulos diferentes).
  - Se deja un espacio entre la palabra y la referencia, como se hace en esta frase \[1\]. Es recomendable, además, que esta frase pueda leerse habiendo omitido la referencia (p.antiejemplo: léase \[3\] y \[16\]).
- Respecto a ecuaciones:
  - Referencias entre paréntesis (no corchetes).

## Figuras
- Centradas.
- Sin deformar (conservar proporciones originales).
- Texto explicativo debajo y también centrado.
- Figuras siempre referenciadas. Si es posible, cerca de la propia figura, y antes de aparecer.
- Figuras vectoriales. Siempre que se pueda (logotipos, diagramas de flujo, etc) crear y utilizar imágenes de tipo vectorial. Estas umágenes no se pixelan con cambios de zoom. Se recomienda Inkscape como la alternativa libre referencia (existen alternativas propietarias como Adobe Illustrator o Corel). Para generar diagramas, tanto yEd (freeware) como Dia (libre) son buneas opciones (también pensar en <https://mermaidjs.github.io/>). Powerpoint también puede exportar a formatos vectoriales. El formato vectorial editable más recomendable es el .svg de Inkscape, o los propios de cada programa. Para incrustar en documentos LaTeX (pdflatex), se recomienda exportar a PDF. Para incrustar en documentos Word, se recomienda exportar a EMF (o WMF si sale mal)(disponible en versión Windows de Inkscape). Aquí un enlace con logos en vectorial: <https://github.com/asrob-uc3m/recursos-digitales/tree/master/logos>
- Un buscador para imágenes libres: <http://search.creativecommons.org/>

## Tablas
- Centradas.
- Texto explicativo normalmente encima y también centrado.

## Código fuente
- Bulto de código fuente: La tendencia es no incluir bultos de código en una memoria, ni siquiera como anexo. Se sube a un lugar y se proporcional la URL. Las siguientes indicaciones se refieren a .
- Fragmentos de código fuente: Los fragmentos de código fuente en teoría no deberían ir como figuras. Específicamente, en LaTex, se suele utilizar el mecanismo [`listing`](https://en.wikibooks.org/wiki/LaTeX/Source_Code_Listings). `listing` tiene muchas opciones, incluida la de poner un marco alrededor y sintaxis (pone colores cual IDE, indicándole si es Python, JSON, etc).
- Recomendación: Incluir diagramas (de flujo, UML, etc), que sí son figuras (y aplican las recomendaciones de la sección [figuras](#figuras)). Para trabajos con software en lenguajes de programación orientados a objetos (OOP), los diagramas de clases son casi indispensables.
- También es un plus incluir un enlace a la documentación generada por [Doxygen](http://www.doxygen.nl/) (que además se puede configurar para generar distintos diagramas).

## Úlitmos consejos
- Se empezó a realizar un script que revisa textos en inglés [aquí](https://github.com/jgvictores/snippets/blob/develop/bash/review-tex.sh) ([permalink](https://github.com/jgvictores/snippets/blob/8db93e72b29279ffa959e5b72287ab8e0129fa16/bash/review-tex.sh)).
- ¡Releer el documento entero mínimo una vez\!

## Más enlaces de interés
- Consejos generales para la [presentación de un documento](http://asrob.uc3m.es/index.php/Presentar).
