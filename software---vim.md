[VIM] es un editor de texto muy versátil.

Instalación en Ubuntu/Debian
----------------------------

```bash
sudo apt-get install vim-gnome
```

Para instalar el paquete de colores Mustang ([fuente original]):

```bash
mkdir ~/.vim; mkdir ~/.vim/colors
mv mustang_vim_colorscheme_by_hcalves.vim ~/.vim/colors/Mustang.vim
```

Comandos básicos
----------------

Pulsa `i` o `a` para empezar a escribir!

`esc` vuelve al modo normal. En modo normal:

- :w -> guardar
- :q -> salir
- :wq -> salir guardando
- :q! -> salir sin guardar
- / -> buscar en documento
- ? -> buscar en documento (hacia atrás)
- :s/from/to -> sustituir primera aparición en la línea
- :s/from/to/g -> sustituir en toda la línea

Configuraciones útiles
----------------------

Setup básico (en Linux, fichero ~/.vimrc, descargar [aquí](../assets/)):

```vim
set nocompatible

" Toggle hidden characters display with F6
map <silent> <F6> :set nolist!<CR>:set nolist?<CR>

source $VIMRUNTIME/mswin.vim
behave mswin
" set guifont=Monospace\ 11 " Programming; Windows: guifont=fixedsys:h11
set guifont=Monospace\ 13 " Writing; Windows: guifont=fixedsys:h13

syntax on
set nu
set t_Co=256
colorscheme Mustang
set bg=dark
set showcmd
set cursorline
hi CursorLine cterm=bold
set lazyredraw " do not redraw while running macros
set scrolloff=3 " Keep 10 lines (top/bottom) for scope
set sidescrolloff=5 " Keep 5 lines at the size
set showmatch

set nocp
filetype plugin on

set expandtab  " Si prefieres tabs reales: noexpandtab
autocmd FileType python set noexpandtab
autocmd FileType c set expandtab
set shiftwidth=4  " Numero de espacios a insertar con expandtab
set tabstop=4  " Espacios que ocupa un tab real

set incsearch
set hlsearch
set ignorecase      "ic:    ignores case when pattern matching
set smartcase         "scs:   ignores ignorecase when pattern contains uppercase characters
set wildmenu
set mouse=a

" Toggle spell-checking
map <silent> <F8> :set nospell!<CR>:set nospell?<CR>
runtime plugins/spellfile.vim
setlocal spelllang=en "english
"setlocal spelllang=es "spanish

" map <silent> <F5> :make<CR>  " Map F5 to call 'make'
map <silent> <F5> :! pdflatex %<CR>  " Map F5 to call a shell (!) 'pdflatex' on 'this file' (%)

" support .dox doxygen syntax highlighting
au BufNewFile,BufRead *.dox set filetype=cpp.doxygen
```

- Excerpts para forzar 80 columnas:

  - Set textwidth to 80, move to the start of the file (can be done with Ctrl-Home or gg), and type gqG.
gqG formats the text starting from the current position and to the end of the file. It will automatically join
consecutive lines when possible. You can place a blank line between two lines if you don't want those two to be
joined together.
  - This solution is the key, but I most often find I want to reformat the rest of the current paragraph; for this
behavior, use gq}.

- [VIM]: http://www.vim.org/
- [fuente original]: http://hcalves.deviantart.com/art/Mustang-Vim-Colorscheme-98974484


