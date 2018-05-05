# Vim (editor de texto)

[Vim](http://www.vim.org/) es un editor de texto muy versátil.

## Instalación en Ubuntu/Debian

```bash
sudo apt-get install vim-gnome
```

## Comandos básicos

Pulsa `i` o `a` para empezar a escribir!

`esc` vuelve al modo normal. En modo normal:

- `:w` -> guardar
- `:q` -> salir
- `:wq` -> guardar y salir
- `:q!` -> salir sin guardar (forzando sin guardar, aunque hayan habido cambios)
- `/` -> buscar en documento
- `?` -> buscar en documento (hacia atrás)
- `:s/from/to` -> sustituir primera aparición en la línea (nótese el formato `regex`)
- `:s/from/to/g` -> sustituir en toda la línea (nótese el formato `regex`)
- `dd` -> borra la línea donde se está
- `gg`-> va a la primera línea

## Configuración básica

La configuración por defecto es un tanto compleja, pero puede modificarse en el fichero `.vimrc`. Aquí configuraremos VIM con una trama de colores `Mustang`, y con comportamientos como CTRL+C para copiar y CTRL+V para pegar (véase `behave mswin` a continuación).

1. Descarga el paquete de colores `Mustang` de: [fuente original](http://hcalves.deviantart.com/art/Mustang-Vim-Colorscheme-98974484)

1. Crea `~/.vim/colors` y mueve el paquete de colores:
   ```bash
   mkdir -p ~/.vim && mkdir -p ~/.vim/colors
   mv mustang_vim_colorscheme_by_hcalves.vim ~/.vim/colors/Mustang.vim
   ```

1. Descarga e instala en `~/` el fichero de configuración básica ([fuente](https://github.com/asrob-uc3m/tutoriales/blob/master/assets/dotfiles/.vimrc)):
   ```bash
   wget https://raw.githubusercontent.com/asrob-uc3m/tutoriales/master/assets/dotfiles/.vimrc -O ~/.vimrc
   ```

## Configuraciones alternativas

- Excerpts para forzar 80 columnas:

  - Set textwidth to 80, move to the start of the file (can be done with Ctrl-Home or gg), and type gqG.
gqG formats the text starting from the current position and to the end of the file. It will automatically join
consecutive lines when possible. You can place a blank line between two lines if you don't want those two to be
joined together.
  - This solution is the key, but I most often find I want to reformat the rest of the current paragraph; for this
behavior, use gq}.

