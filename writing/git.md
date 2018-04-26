# Control de versiones: Git
## Sintaxis: Git

Listado de recetas para la sintaxis en el control de versiones con Git.

### TABLA DE CONTENIDOS

	1. Inicialización de proyecto
	2. Registrar cambios
	3. Hacer un commit
	4. Envío de cambios
	5. Enlazar repositorio local con remoto
	6. Creación de ramas
	7. Borrar ramas
	8. Actualizar y fusionar
	9. Etiquetas



#### Descripción del contenido

	1. Inicialización de proyecto

Crea un directorio nuevo, ábrelo y ejecuta.

`git init`

	2. Registrar cambios

Puedes registrar cambios usando:
`git add <filename>`

Para todo el directorio:

`git add -A`


	3. Hacer un commit
	
`git commit -m "Commit message"`

Ahora el archivo esta incluído en el HEAD, pero aún no en tu repositorio remoto.

	4. Envío de cambios
	

Tus cambios están ahora en el HEAD de tu copia local. Para enviar estos cambios a tu repositorio remoto ejecuta:

`git push origin master`

Reemplaza master por la rama a la que quieres enviar tus cambios.
Si se desea enviar a la rama en la que se encuentra, únicamente ejecutar:

`git push`


	5. Enlazar repositorio local con remoto
	
Si no se ha clonado un repositorio ya existente y quieres conectar tu repositorio local a un repositorio remoto, usa:

`git remote add origin <server>`

Ahora podrás subir tus cambios al repositorio remoto seleccionado.

	6. Creación de ramas

Las ramas son utilizadas para desarrollar funcionalidades aisladas unas de otras. La rama master es la rama "por defecto" cuando creas un repositorio. Crea nuevas ramas durante el desarrollo y fusiónalas a la rama principal cuando termines.
	
Crea una nueva rama llamada "rama_b" y cámbiate a ella usando.

`git checkout -b rama_b`

Vuelve a la rama principal.

`git checkout master`

	7. Borrar ramas
	
Borra la rama:

`git branch -d rama_b`

Una rama nueva no estará disponible para los demás a menos que subas (push) la rama a tu repositorio remoto.

`git push origin <branch>`
	
    8. Actualizar y fusionar
    
Actualiza y fusiona:

Para actualizar tu repositorio local al commit más nuevo, ejecuta.

`git pull`

En tu directorio de trabajo para bajar y fusionar los cambios remotos.
Para fusionar otra rama a tu rama activa (por ejemplo master), utiliza:

`git merge <branch>`

En ambos casos git intentará fusionar automáticamente los cambios. Desafortunadamente, no siempre será posible y se podrán producir conflictos. Tú eres responsable de fusionar esos conflictos manualmente al editar los archivos mostrados por git. Después de modificarlos, necesitas marcarlos como fusionados con.

`git add <filename>`

Antes de fusionar los cambios, puedes revisarlos usando

`git diff <source_branch> <target_branch>`

	9. Etiquetas

Se recomienda crear etiquetas para cada nueva versión publicada de un software. Este concepto no es nuevo, ya que estaba disponible en SVN. Puedes crear una nueva etiqueta llamada 1.0.0 ejecutando

`git tag 1.0.0 1b2e1d63ff`

1b2e1d63ff se refiere a los 10 caracteres del commit id al cual quieres referirte con tu etiqueta. Puedes obtener el commit id con

`git log`

también puedes usar menos caracteres que el commit id, pero debe ser un valor único.
reemplaza cambios locales

En caso de que hagas algo mal (lo que seguramente nunca suceda ;) puedes reemplazar cambios locales usando el comando

`git checkout -- <filename>`

Este comando reemplaza los cambios en tu directorio de trabajo con el último contenido de HEAD. Los cambios que ya han sido agregados al Index, así como también los nuevos archivos, se mantendrán sin cambio.

Por otro lado, si quieres deshacer todos los cambios locales y commits, puedes traer la última versión del servidor y apuntar a tu copia local principal de esta forma

`git fetch origin`
`git reset --hard origin/master`

