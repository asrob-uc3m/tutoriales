# Control de versiones: Git

- [Comandos](#comandos)
    - [Crear un repositorio nuevo (git init)](#crear-un-repositorio-nuevo-git-init)
    - [Descargar una copia de un repositorio existente (git clone)](#descargar-una-copia-de-un-repositorio-existente-git-clone)
    - [Descargar últimos cambios de un repositorio (git pull)](#descargar-últimos-cambios-de-un-repositorio-git-pull)
    - [Comprobar estado de repositorio (git status)](#comprobar-estado-de-repositorio-git-status)
    - [Indicar qué cambios se subirán localmente (git add)](#indicar-qué-cambios-se-subirán-localmente-git-add)
    - Hacer un commit
    - Envío de cambios
    - Enlazar repositorio local con remoto
    - Creación de ramas
    - Borrar ramas
    - Actualizar y fusionar
    - Etiquetas
- [Tutoriales](#tutoriales)

## Comandos

### Crear un repositorio nuevo (git init)

Habitualmente creamos repositorios nuevos directamente en GitHub (interfaz web), pero también se pueden crear localmente.
Para crear un repositorio localmente, desde una carpeta nueva, ejecuta el comando:
```bash
git init
```

### Descargar una copia de un repositorio existente (git clone)

Para descargar una copia de un repositorio existente (creado con GitHub o manualmente), se utiliza el comando `git clone`. Para el repositorio `tutoriales` de la organización `asrob-uc3m` en GitHub, el comando sería:
```bash
git clone https://github.com/asrob-uc3m/tutoriales.git
```
Consideraciones:
1. Debe utilizarse con la raíz del repositorio.
1. El sufijo `.git` es opcional.
1. Existen otros protocolos además de `https:`, incluyendo el propio `git:`.

### Descargar últimos cambios de un repositorio (git pull)

Si nos hemos descargado previamente la copia de un repositorio ([git clone](#descargar-una-copia-de-un-repositorio-existente-git-clone)), es posible que en un momento dado no tengamos los últimos cambios remotos. Esto se soluciona mediante:
```bash
git pull
```
Es recomendable hacerlo **siempre** antes de cualquiera de los próximos pasos.

### Comprobar estado de repositorio (git status)
```bash
git status
```

1. Los ficheros con cambios y los que no estén agregados al proyecto aparecerán en <span style="color:red;">**rojo**</span>.
1. Los ficheros con cambios que se subirán localmente aparecerán en <span style="color:green;">**verde**</span>.

### Indicar qué cambios se subirán localmente (git add)

Puedes indicar qué cambios se subirán usando `git add`. Existe un modo interactivo (`git add -i`) que permite seleccionar por línea, pero lo más habitual es por fichero. Por ejemplo, para indicar que se subirá localmente el fichero `file.md` (sea nuevo o modificado):
```bash
git add file.md
```
Este fichero pasará a <span style="color:green;">**verde**</span> en `git status` y se dice que está "staged". Nótese que todavía no se ha subido localmente.

Git hace distinción entre ficheros nuevos y modificados. Existe un atajo para indicar que se suban localmente todos los ficheros con modificaciones, que no afecta a los nuevos (que deberán indicarse explícitamente):
```bash
git add -u
```

### Hacer un commit
	
`git commit -m "Mensaje del commit"`

Ahora el archivo esta incluído en el HEAD, pero aún no en tu repositorio remoto.

### Envío de cambios

Tus cambios están ahora en el HEAD de tu copia local. Para enviar estos cambios a tu repositorio remoto ejecuta:

`git push origin master`

Reemplaza master por la rama a la que quieres enviar tus cambios.
Si se desea enviar a la rama en la que se encuentra, únicamente ejecutar:

`git push`

### Enlazar repositorio local con uno remoto
	
Si no se ha clonado un repositorio ya existente y quieres conectar tu repositorio local a un repositorio remoto, usa:

`git remote add origin <server>`

Ahora podrás subir tus cambios al repositorio remoto seleccionado.

### Creación de ramas

Las ramas son utilizadas para desarrollar funcionalidades aisladas unas de otras. La rama master es la rama "por defecto" cuando creas un repositorio. Crea nuevas ramas durante el desarrollo y fusiónalas a la rama principal cuando termines.
	
Crea una nueva rama llamada "rama_b" y cámbiate a ella usando.

`git checkout -b rama_b`

Vuelve a la rama principal.

`git checkout master`

### Borrar ramas
	
Borra la rama:

`git branch -d rama_b`

Una rama nueva no estará disponible para los demás a menos que subas (push) la rama a tu repositorio remoto.

`git push origin <branch>`
	
### Actualizar y fusionar
    
Actualiza y fusiona:

Para actualizar tu repositorio local al commit más nuevo, ejecuta:

`git pull`

En tu directorio de trabajo para bajar y fusionar los cambios remotos.
Para fusionar otra rama a tu rama activa (por ejemplo master), utiliza:

`git merge <branch>`

En ambos casos git intentará fusionar automáticamente los cambios. Desafortunadamente, no siempre será posible y se podrán producir conflictos. Tú eres responsable de fusionar esos conflictos manualmente al editar los archivos mostrados por git. Después de modificarlos, necesitas marcarlos como fusionados con.

`git add <filename>`

Antes de fusionar los cambios, puedes revisarlos usando

`git diff <source_branch> <target_branch>`

### Etiquetas

Se recomienda crear etiquetas para cada nueva versión publicada de un software. Este concepto no es nuevo, ya que estaba disponible en SVN. Puedes crear una nueva etiqueta llamada 1.0.0 ejecutando:

`git tag 1.0.0 1b2e1d63ff`

1b2e1d63ff se refiere a los 10 caracteres del commit id al cual quieres referirte con tu etiqueta. Puedes obtener el commit id con

`git log`

También puedes usar menos caracteres que el commit id, pero debe ser un valor único.
Reemplaza cambios locales.

En caso de que hagas algo mal puedes reemplazar cambios locales usando el comando:

`git checkout -- <filename>`

Este comando reemplaza los cambios en tu directorio de trabajo con el último contenido de HEAD. Los cambios que ya han sido agregados al Index, así como también los nuevos archivos, se mantendrán sin cambio.

Por otro lado, si quieres deshacer todos los cambios locales y commits, puedes traer la última versión del servidor y apuntar a tu copia local principal de esta forma

`git fetch origin`
`git reset --hard origin/master`

## Tutoriales
- https://www.gitbook.com/book/david-estevez/the-git-the-bad-and-the-ugly
- https://git-scm.com/book/en/v2
- https://www.atlassian.com/git
- https://github.com/k88hudson/git-flight-rules
- https://www.mediawiki.org/wiki/Git_for_dummies
- https://www.mediawiki.org/wiki/User:Aude/Git
- https://xkcd.com/1597/

## Cheatsheet
- Almacenar contraseña durante un tiempo: [`git config credential.helper cache`](https://git-scm.com/docs/git-credential-cache)
- Deshacer los cambios de un fichero (antes de commit): [`git checkout -- nombre-fichero`](https://git-scm.com/docs/git-checkout#git-checkout-emgitcheckoutemlttree-ishgt--ltpathspecgt82308203)
- Corregir el texto del último commit (antes de push, aunque se podría forzar): [`git commit --amend`](https://git-scm.com/docs/git-commit#git-commit---amend)
- Deshacer el útimo commit entero (antes de push, aunque se podría forzar): [`git reset HEAD~1`](https://git-scm.com/docs/git-reset#git-reset-emgitresetemltmodegtltcommitgt)
- Ver diferencias por palabras en lugar de líneas (probado también con `git show`): [`git diff --word-diff=color --word-diff-regex=.`](https://stackoverflow.com/questions/1721738/using-diff-or-anything-else-to-get-character-level-diff-between-text-files)

## Git Log Visualization
- `gitk`
- `gitg`
- `git log --graph`
- `git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit` (thanks https://coderwall.com/p/euwpig/a-better-git-log)

## Git prompt helpers
Pequeños scripts que pueden hacer que en el prompt de tu consola estilo [bash](/software/linux/bash.md) se vea información de git.
- Oficial: https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh
- Windows: https://desktop.github.com/
- Short (hay muchos): https://github.com/motine/gitprompt
