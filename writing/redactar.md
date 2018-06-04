Para redactar, existen dos herramientas populares: [Microsoft Word](https://es.wikipedia.org/wiki/Microsoft_Word), y [LaTeX](http://es.wikipedia.org/wiki/LaTeX). Microsoft Word es más visual, y LaTeX se parece más a programar. Una ventaja de LaTeX es que es Open Source, por tanto, si falla algo, puede ser difícil, pero tienes la posibilidad de arreglarlo.

## Plantillas UC3M

Existe mucha documentación en Campus Global, y en UC3M/Biblioteca (incluida [Matriz de Criterios de Evaluación de PFCs de la UC3M](Media:Criterios_matriz_evaluacion_TFG.pdf "wikilink"), hoja [Excel para presupuestos](https://github.com/asrob-uc3m/recursos-digitales/blob/master/plantillas/Formulario_PresupuestoPFC-TFG.xlsx), [etc](http://uc3m.libguides.com/TFG)). Mirar también [Nuestros recursos digitales](https://github.com/asrob-uc3m/recursos-digitales).

  - <https://github.com/asrob-uc3m/recursos-digitales/tree/master/plantillas>

<!-- end list -->

  - Old:
      - [Grado LaTeX (UC3M)](media:PlantillaTFG.zip "wikilink"). Tutorial para éste: [Ubuntu TFG LaTeX (UC3M)](LaTeX_para_TFG_en_Ubuntu "wikilink").
      - [Master LaTeX (UC3M)](media:Master_template.zip "wikilink"). [Portada Master (UC3M)](https://github.com/asrob-uc3m/recursos-digitales/tree/develop/plantillas/portada-master).

## Índice

  - Una profundidad de índice admisible es hasta 3 subniveles (sección 2.3.4), aunque luego en el documento se desglosen más (sección 2.3.4.c).
  - Cantidad de páginas por capítulo compensado (no tiene sentido que un capítulo sea de 80 páginas y otro de 3).
  - Aquí un ejemplo de índice:

<!-- end list -->

1.  Introducción (con introducción, objetivos, estructura del documento)
2.  [Estado del arte](#Estado_del_arte "wikilink") A+B+C
3.  Arquitectura global (aquí entra bien un diagrama de flujo general)
4.  Desarrollo A
5.  Desarrollo B
6.  Desarrollo C
7.  Experimentos y resultados
8.  Conclusiones y líneas futuras (con conclusiones y líneas futuras)

<!-- end list -->

  -   - [Bibliografía](#Bibliograf.C3.ADa "wikilink")
      - Anexos (sí: presupuesto)(posible: partes relevantes de datasheets)(no códigos fuentes completos, mejor proporcionar diagramas de clases, etc., y citar URL del código fuente en documento).

## Estado del arte

  - El estado del arte de un documento científico debería consistir en referencias a documentos científicos que componen la [Bibliografía](#Bibliograf.C3.ADa "wikilink"), tanto por que sean útiles o porque posteriormente se debata que se hayan superado. También debería servir para explicar alternativas software o hardware, como apoyo para justificar decisiones de diseño que se tomen más adelante en el documento.

## Bibliografía

  - Existen muchos gestores de bibliografía: [Mendeley](https://www.mendeley.com/) (que dispone de plugins recomendables para Microsoft Word y LibreOffice), Zotero... En LaTeX, se puede utilizar uno de estos gestores, o trabajar directamente sobre el archivo .bib (no se recomienda trabajar sobre el .bbl sino generarlo con bibtex a partir del .bib).
  - Es necesario que todos los elementos de la bibliografía estén referenciados.
  - El orden de los elementos debe ser el de aparición en el documento (ciertos autores prefieren orden alfabético).
  - Tratar de evitar bibliografía del que solo se disponga una URL (foros, webs...). En caso de ser realmente necesario, es obligatorio poner la fecha de acceso: "(último acceso 22 de febrero de 2011)", y en general es casi preferible que sea simplemente un pie de página.
  - En lugar de foros o webs, tratar de utilizar bibliografía científica: preferiblemente "Journals", o "Proceedings of Conferences" si no.
  - Para localizar bibliografía científica, utiliza buscadores como [Google Académico](http://scholar.google.es) o [IEEExplore](http://ieeexplore.ieee.org/Xplore/guesthome.jsp?reload=true) que dispongan de la opción de importar citas a bibtex o semejante.

## Formato (Importante)

  - Respecto a títulos de documento/capítulo/secciones: "Esto es un título en español". "This Is A Title In English". Ninguno acaba en punto.
  - Como norma general, ceñirse a las plantillas, sin modificar márgenes ni introducir excesivos modificadores de formato. La inclusión de ciertos paquetes de LaTeX también pueden crear conflictos.
  - Texto justificado (no alineado a izquierda).
  - Evitar faltas de ortografía/gramática.
  - Evitar faltas en la puntuación: espacio después de punto, etc. Cuidado en mayúsculas/minúsculas.
  - Evitar la reutilización de frases completas de otros documentos (copia+pega). Incluso las licencias más abiertas piden que se cite la fuente original.
  - Utilizar frases cortas. Como regla general, se puede pensar "no más de un concepto por frase, tal vez más de una frase para explicar un solo concepto".
  - Coherencia interna. Ejemplo 1: MTi debe aparecer siempre como MTi, no MTI a veces. Ejemplo 2: Un algoritmo es siempre un algoritmo, no pasa a ser un método o infraestructura en un mismo documento.

<!-- end list -->

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
  - Figuras vectoriales. Siempre que se pueda (logotipos, diagramas de flujo, etc) crear y utilizar imágenes de tipo vectorial. Estas imágenes no se pixelan con cambios de zoom. Se recomienda Inkscape como la alternativa libre referencia (existen alternativas propietarias como Adobe Illustrator o Corel). Para generar diagramas, tanto yEd (freeware) como Dia (libre) son buneas opciones (también pensar en <https://mermaidjs.github.io/>). Powerpoint también puede exportar a formatos vectoriales. El formato vectorial editable más recomendable es el .svg de Inkscape, o los propios de cada programa. Para incrustar en documentos LaTeX (pdflatex), se recomienda exportar a PDF. Para incrustar en documentos Word, se recomienda exportar a EMF (o WMF si sale mal)(disponible en versión Windows de Inkscape). Aquí un enlace con logos en vectorial: <https://github.com/asrob-uc3m/recursos-digitales/tree/master/logos>
  - Un buscador para imágenes libres: <http://search.creativecommons.org/>
  - Diagramas de clases UML si hay SW (también vectoriales a ser posible).

## Tablas

  - Centradas.
  - Texto explicativo normalmente encima y también centrado.

## Úlitmos consejos

  - Se empezó a realizar un script que revisa textos en inglés [aquí](https://github.com/jgvictores/snippets/blob/develop/bash/review-tex.sh) ([permalink](https://github.com/jgvictores/snippets/blob/8db93e72b29279ffa959e5b72287ab8e0129fa16/bash/review-tex.sh)).
  - ¡Releer el documento entero mínimo una vez\!

## Más enlaces de interés

  - Consejos generales para la [ presentación de un documento](Presentar "wikilink").
  - ![Formatobasicopararedactareportes.pdf](Formatobasicopararedactareportes.pdf "Formatobasicopararedactareportes.pdf")
