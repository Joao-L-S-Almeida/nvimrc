set nocompatible              " required
filetype off                  " required
set backspace=2

call plug#begin('~/.local/share/nvim/plugged')

Plug 'tmhedberg/SimpylFold'
Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8'
Plug 'scrooloose/nerdtree' " Directories tree
Plug 'maralla/completor.vim'
Plug 'vim-scripts/taglist.vim' " File objects tree  
Plug 'junegunn/fzf.vim'        " Fuzzy file search
Plug 'sheerun/vim-polyglot' 
Plug 'davidhalter/jedi'        " Python auto-completor
Plug 'joshdick/onedark.vim'    " Colorscheme 
Plug 'tomasr/molokai'          " Colorscheme 
Plug 'nanotech/jellybeans.vim' " Colorscheme 
Plug 'vim-airline/vim-airline' 
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'gosukiwi/vim-atom-dark'
Plug 'simeji/winresizer'       " Plugin for facilitating the window managament
Plug 'xolox/vim-session'
Plug 'xolox/vim-misc'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'junegunn/goyo.vim'       " Plugin for enabling focus mode 

call plug#end()

filetype plugin indent off

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix 

set encoding=utf-8

let g:indent_guides_enable_on_vim_startup = 2
let g:python_highlight_all = 1

" session management
let g:session_directory = "~/.config/nvim/session"
let g:session_autoload = "no"
let g:session_autosave = "no"
let g:session_command_aliases = 1

let g:chromatica#enable_at_startup=1

syntax on
set ts=4 sw=4 et

set nu
set ruler
set cursorline
set title

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

let g:indentLine_char = '│'
let g:indent_blankline_space_char=' '
let g:indent_blankline_char='│'
let g:indent_blankline_indent_level = 4

set list
set nowrap

au ColorScheme * hi Normal ctermbg=None
colorscheme onedark
set background=dark

