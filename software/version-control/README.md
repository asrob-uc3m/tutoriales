# Control de versiones

Los sistemas de control de versiones (RCS, Revision Control System) son, en esencia, herramientas software para la gestión de carpetas y ficheros online. Utilizan servidores centralizados o distribuidos a los cuales se conectan los diversos usuarios del sistema para subir o descargar ficheros. Mantienen una base de datos incremental (en general llamado `repositorio`), puesto que mantienen un especial énfasis en el registro del histórico de las acciones realizadas sobre éstos. 
Se actualizan con los cambios de ficheros de los usuarios (en general llamados `commits` o `revisiones`), pero los anteriores cambios se mantienen y son siempre accesibles en caso de necesidad de ir para atrás. El hecho de registrar qué cambios existen entre distintas revisiones de código y la posibilidad de comparación y marcha atrás hacen que los RCS sean componentes fundamentales para la depuración y el desarrollo de software (y en la actualidad: documentación, hardware, etc).

Exiten muchos RCS: Git, Subversion, Hg, Bazaar, CVS... A continuación, tutoriales de sistemas de control de versiones muy utilizados.

* [Git](git.md)
* [Subversion (SVN)](subversion.md)

## Referencias
- https://es.wikipedia.org/wiki/Control_de_versiones
