# Git (control de versiones)

## Cheatsheat
- Almacenar contraseña durante un tiempo: [git config credential.helper cache](https://git-scm.com/docs/git-credential-cache)
- Deshacer los cambios de un fichero (antes de commit): [git checkout -- nombre-fichero](https://git-scm.com/docs/git-checkout#git-checkout-emgitcheckoutemlttree-ishgt--ltpathspecgt82308203)
- Corregir el texto del último commit (antes de push, aunque se podría forzar): [git commit --amend](https://git-scm.com/docs/git-commit#git-commit---amend)
- Deshacer el útimo commit entero (antes de push, aunque se podría forzar): [git reset HEAD~1](https://git-scm.com/docs/git-reset#git-reset-emgitresetemltmodegtltcommitgt)

## Git Log Visualization
- gitk
- gitg
- git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit  # Thanks https://coderwall.com/p/euwpig/a-better-git-log

## Referencias
- https://www.gitbook.com/book/david-estevez/the-git-the-bad-and-the-ugly
- https://git-scm.com/book/en/v2
- https://www.atlassian.com/git
