# Control de versiones

Los sistemas de control de versiones (RCS, Revision Control System) son herramientas software para la gestión de carpetas y ficheros online. Son mecanismos que proporcionan carpetas compartidas (en general denominados `repositorios`).

Hacen especial énfasis en el registro del histórico de las acciones realizadas sobre éstos (mantienen una base de datos incremental). Se actualizan con los cambios de ficheros de los usuarios (en general llamados `commits` o `revisiones`), pero los anteriores cambios se mantienen y son siempre accesibles en caso de necesidad de ir para atrás. El hecho de registrar qué cambios existen entre distintas revisiones de código y la posibilidad de comparación y marcha atrás hacen que los RCS sean componentes fundamentales para la depuración y el desarrollo de software, pero también para documentación, hardware, etc.

Otra característica importante es la posibilidad de ramificar una línea de desarrollo, para posteriormente unirlo (`merge`) a la rama principal.

Exiten muchos RCS: Git, Subversion, Hg, Bazaar, CVS... A continuación, tutoriales de sistemas de control de versiones muy utilizados.

* [Git](git.md)
* [Subversion (SVN)](subversion.md)

Los RCS pueden ser centralizados o distribuidos, pudiéndose instalar sobre equipos propios, o utilizando servicios de terceros (p.ej. GitHub o Sourceforge).

## Referencias
- https://es.wikipedia.org/wiki/Control_de_versiones
