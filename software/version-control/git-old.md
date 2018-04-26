# Git (control de versiones)

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