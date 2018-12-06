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
" autocmd FileType python set noexpandtab " Descomenta si prefieres tabs reales para Python
set shiftwidth=4  " Numero de espacios a insertar con expandtab
set tabstop=4  " Espacios que ocupa un tab real
" block indentation con tab y shift-tab utilizando behave mswin
vnoremap <Tab> >
vnoremap <S-Tab> <

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
