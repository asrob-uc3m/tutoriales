# Redactar

## Herramientas

Para redactar, existen dos herramientas populares: [Microsoft Word](https://es.wikipedia.org/wiki/Microsoft_Word), y [LaTeX](https://es.wikipedia.org/wiki/LaTeX). Microsoft Word es más visual, y LaTeX se parece más a programar. Una ventaja de LaTeX es que es Open Source, por tanto, si falla algo, puede ser difícil, pero tienes la posibilidad de arreglarlo.

## Recursos UC3M

Plantillas, documentación... Existe mucha documentación en webs oficiales ([1](https://www.uc3m.es/ss/Satellite/SecretariaVirtual/es/TextoMixta/1371210936260/Trabajo_de_Fin_de_Grado#defensa)), Campus Global, y en UC3M/Biblioteca ([2](https://uc3m.libguides.com/TFG))([3](https://uc3m.libguides.com/TFM)).

Además de estos, mirar nuestros recursos digitales: <https://github.com/asrob-uc3m/recursos-digitales> (incluyen plantillas, [Matriz de Criterios de Evaluación de PFCs de la UC3M](https://github.com/asrob-uc3m/recursos-digitales/blob/master/plantillas/grado/uc3m_matriz_de_evaluacion_9_febrero_2018.pdf), hoja [Excel para presupuestos](https://github.com/asrob-uc3m/recursos-digitales/blob/master/plantillas/grado/Formulario_PresupuestoPFC-TFG.xlsx)...)

## Índice del documento

- Una profundidad de índice admisible es hasta 3 subniveles (sección 2.3.4), aunque luego en el documento se desglosen más (sección 2.3.4.c).
- Cantidad de páginas por capítulo compensado (no tiene sentido que un capítulo sea de 80 páginas y otro de 3).
- Revisar que se incluyen todos los aspectos contemplados en la correspondiente matriz de evaluación (que puede ser diferente según la titulación, p.ej. véase en [Recursos UC3M](#recursos-uc3m)).
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
- Anexos:
    - Siempre: [Presupuesto](#presupuesto)
    - Posible: partes relevantes de datasheets
    - Nunca: códigos fuentes completos, véase sección [código fuente](#código-fuente).

## Estado del arte

- El estado del arte de un documento científico debería consistir en referencias a documentos científicos que componen la [Bibliografía](#bibliografía), tanto por que sean útiles o porque posteriormente se debata que se hayan superado. También debería servir para explicar alternativas software o hardware, como apoyo para justificar decisiones de diseño que se tomen más adelante en el documento.

## Bibliografía

- Existen muchos gestores de referencias bibliográficas: [Mendeley](https://www.mendeley.com/) (que dispone de plugins para Microsoft Word y LibreOffice, y puede exportar ficheros `.bib` para LaTeX), Zotero... En LaTeX se recomienda trabajar con ficheros `.bib` que genera ficheros `.bbl` mediante el comando `bibtex` (frente a la alternativa de directamente manipular los elementos `\bibitem` del `.bbl`).
- URLs (blogs, foros, webs...). En principio, tratar de evitar este tipo de referencias bibliográficas. Muchas veces se puede encontrar un documento científico que describe el mismo contenido (p.ej. la wikipedia muchas veces cita artículos científicos como fuente).
- Tratar de utilizar siempre bibliografía científica, que debe componerse principalmente de contenidos de años recientes (aunque puede contener algunas referencias clásicas). En general nuestra proporción será de más proceedings que journals precisamente por la búsqueda de material reciente:
    - Journals: Artículos de revistas científicas. Pasan por procesos de revisión por pares en general largos y con varias iteraciones, por tanto suelen ser largos, descriptivos e informativos.
        - Journals "top":
            - Indexados en Journal Citation Reports (JCR), donde a su vez cada categoría se desglosa en cuartiles (y el "top" es Q1). Sigue siendo relevante, pese a que la ANECA se ha pasado a métricas como DORA y CoARA según [esta noticia](https://www.aneca.es/-/aneca-se-adhiere-a-la-san-francisco-declaration-on-research-assessment-dora-y-a-la-coalition-for-advancing-research-assessment-coara-).
            - Generalistas: Son muy famosos `Nature` y `Science`. `IEEE Access` es interesante.
            - Robótica: [IEEE RAM](https://ramagazine.ieee.org), [IJRR](https://journals.sagepub.com/home/ijr), [T-RO](https://www.ieee-ras.org/publications/t-ro), RAS...
        - Journals a evitar: suelen llamarse Predatory Journals (p.ej. <https://predatoryjournals.com/journals>)
        - Punto intermedio:
            - MDPI Applied Sciences. 2023. Q1 (44/181) en JCR en ENGINEERING, MULTIDISCIPLINARY
            - MDPI Sensors. 2023: Q2 (122/353 ) en JCR en ENGINEERING, ELECTRICAL & ELECTRONIC)
            - MDPI Electronics. 2023: Q2 (157/353) en JCR en ENGINEERING, ELECTRICAL & ELECTRONIC
            - MDPI Algorithms. 2023: Q2 (62/144) en JCR en COMPUTER SCIENCE, THEORY & METHODS
            - MDPI Symmetry. 2023: Q2 (50/134) en JCR en MULTIDISCIPLINARY SCIENCES
            - MDPI Machines. 2023: Q2 (83/183) en JCR en ENGINEERING, MECHANICAL
            - MDPI Robotics. 2023: (23/46) en JCR en ROBOTICS
    - Proceedings de conferencias: Artículos que se presentan en conferencias científicas. En general, con contenido más actual y breve que journals.
        - Proceedings "top":
            - Indexados en Web of Science (WOS).
            - Robótica: [IROS](https://iros.org/), [ICRA](https://www.ieee-ras.org/conferences-workshops/fully-sponsored/icra), [RSS](https://www.roboticsconference.org), HUMANOIDS, HRI, ROMAN... (ver web de [IEEE-RAS](https://ras.papercept.net)).
            - Inteligencia Artificial y Computer Vision: [NeurIPS](https://neurips.cc) (ex-[NIPS](https://nips.cc)), [ICML](https://icml.cc), ECCV, CVPR, SOCML... (ver web de [handong1587](https://handong1587.github.io)).
            - Computer Graphics: [SIGGRAPH](https://www.siggraph.org).
            - Signal Processing: ICASSP.
        - También existen conferencias predatory. :(
- Para localizar bibliografía científica, utiliza buscadores como [Google Académico](https://scholar.google.es) o [IEEExplore](https://ieeexplore.ieee.org/Xplore/guesthome.jsp?reload=true) que dispongan de la opción de importar citas a bibtex o semejante.
    - **UC3M (acceso a buscadores JCR y WOS)**: Puedes acceder a los buscadores JCR dentro de [Información para investigadores](https://www.recursoscientificos.fecyt.es/servicios/informacion) > "ENLACE DE ACCESO DIRECTO A LAS B..." > [JCR](https://jcr-incites.fecyt.es/) o [WOS](https://wos-ic.fecyt.es/)
    - **UC3M (acceso a buscador de normas UNE)**: [AENORMás UC3M](https://biblioteca2.uc3m.es/aquibiblioteca/2017/12/22/aenormas-nueva-suscripcion-a-normas-une-con-importantes-novedades/) > [https://biblioteca3.uc3m.es/RREE/recurso.php?recurso=AENOR](https://biblioteca3.uc3m.es/RREE/recurso.php?recurso=AENOR) > <https://plataforma.aenormas.aenor.com>
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
- Evitar extranjerismos sin referenciar (p.ej. si el documento está en español, como mínimo poner pie de página ante anglicismos).

### Formato de figuras

- Centradas.
- Sin deformar (conservar proporciones originales).
- Texto explicativo debajo y también centrado.
- Figuras siempre referenciadas. Si es posible, cerca de la propia figura, y antes de aparecer.
- Figuras vectoriales. Siempre que se pueda (logotipos, diagramas de flujo, etc) crear y utilizar imágenes de tipo vectorial. Estas imágenes no se pixelan con cambios de zoom. Se recomienda Inkscape como la alternativa libre referencia (existen alternativas propietarias como Adobe Illustrator o Corel). Para generar diagramas, tanto yEd (freeware) como Dia (libre) son buneas opciones (también pensar en <https://mermaidjs.github.io/>). Powerpoint también puede exportar a formatos vectoriales. LaTeX permite también crear imágenes vectoriales, por ejemplo a través de TikZ. El formato vectorial editable más recomendable es el `.svg` de Inkscape, o los propios de cada programa. Para incrustar en documentos LaTeX (`pdflatex`), se recomienda exportar a PDF. Para incrustar en documentos Word, se recomienda exportar a EMF (o WMF si sale mal)(disponible en versión Windows de Inkscape).
- Para gráficas: nombrar ejes, e indicar unidades siempre que se pueda.
- A veces debemos volver a generar las referencias cruzadas para que se actualice el orden.
- Un buscador para imágenes libres: <https://search.creativecommons.org/>
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
- También es un plus incluir un enlace a la documentación generada por [Doxygen](https://www.doxygen.nl/) (que además se puede configurar para generar distintos diagramas).

## Presupuesto

- Véase si existe plantilla específica, que puede ser específico según la titulación, p.ej. véase en [Recursos UC3M](#recursos-uc3m))
- Otras posibles fuentes:
    - Los salarios anulares de un licenciado en ingeniería, así como de los técnicos auxiliares: convenio colectivo del sector de la Industria, Servicios e Instalaciones del Metal de la Comunidad de Madrid, Boletín Oficial de la Comunidad el 13 de marzo de 2023.
    - Los honorarios correspondientes a profesores de universidad de diferentes categorías: se encuentran publicados en la página de recursos humanos de dichas instituciones.

## Úlitmos consejos

- Revisar enlaces rotos y referencias internas rotas (p.ej. buscar por `??` en LaTeX).
- Revisar, en todas las páginas generadas por LaTeX, que ninguna palabra se haya salido de márgenes (el hyphen puede hacer que esto ocurra con parabras muy largas).
- Revisar que se incluyen todos los aspectos contemplados en la correspondiente matriz de evaluación (que puede ser diferente según la titulación, p.ej. véase en [Recursos UC3M](#recursos-uc3m)).
- Se empezó a realizar un script que revisa textos en inglés [aquí](https://github.com/jgvictores/snippets/blob/develop/bash/review-tex.sh) ([permalink](https://github.com/jgvictores/snippets/blob/8db93e72b29279ffa959e5b72287ab8e0129fa16/bash/review-tex.sh)).
- ¡Releer el documento entero mínimo una vez!

## Más enlaces de interés

- Consejos generales para la [presentación de un documento](https://apps-robots.uc3m.es/asrob/wiki/Presentar).
- <https://uc3m.libguides.com/tesis/escribir>
