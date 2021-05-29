[![asrob-uc3m logo](assets/asrob-135x135.png)](http://asrob.uc3m.es)

# Tutoriales

Recopilación de tutoriales y materiales útiles sobre los programas y herramientas que usamos en [ASROB](http://asrob.uc3m.es)

Actualmente alojado en: https://asrob-uc3m.github.io/tutoriales/

## Si tienes alguna duda o comentario con respecto al contenido

1. Por favor revisa si puedes encontrar la respuesta en el archivo correspondiente y/o en la documentación de la carpeta a la cual pertenece, así como en la sección [Issues](https://github.com/asrob-uc3m/tutoriales/issues) (problemas abiertos y cerrados).
2. Si tu duda o comentario no es un duplicado, comenta de forma pública detalladamente: [Nueva Issue](https://github.com/asrob-uc3m/tutoriales/issues/new)

## Cómo hacer
* [Cómo servir en localhost](#cómo-servir-servir-en-localhost)
* [Cómo subir cambios a GitHub](#cómo-subir-cambios-a-github)

### Cómo servir en localhost
Es útil servir en `localhost` para modificar el sitio web y ver los cambios localmente.

1. Desde la raíz del proyecto, ejecuta el siguiente comando (que es universal para todos los proyectos basados en [Gitbook (legacy)](https://github.com/GitbookIO/gitbook)):
```bash
gitbook serve # command builds and serves
```

2. Ahora puedes navegar por el sitio en la ubicación predeterminada: http://127.0.0.1:4000

### Cómo subir cambios a GitHub
Este proyecto se administra como cualquier proyecto en [GitHub](https://www.github.com). Puedes usar [Git](https://git-scm.com) o incluso la interfaz web de GitHub, sobre las cuales puedes encontrar muchos tutoriales online. Los siguientes puntos son específicos del mecanismo [Gitbook (legacy)](https://github.com/asrob-uc3m/actas/issues/148#issuecomment-449748350) utilizado y su [configuración actual](https://github.com/asrob-uc3m/robotDevastation-user-manual/settings):

1. Por favor **no subas** la carpeta `_book/`. Se genera automáticamente a nivel local, y lo mismo debería ocurrir en los servidores de Gitbook (legacy).

2. Se puede `git push` a cualquier branch upstream, pero recuerda que lo que está en `master` es lo que realmente se renderizará como el sitio web.
