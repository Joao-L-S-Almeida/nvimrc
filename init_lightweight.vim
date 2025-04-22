" Some basic configurations
set nocompatible              " required
filetype off                  " required
set backspace=2
syntax on
set ts=4 sw=4 et
set nu
set ruler
set cursorline
set title
set list
"set nowrap
set tw=80
"set wrapmargin=1
"set spell spelllang=en_us

" Activating plugins
call plug#begin('~/.local/share/nvim/plugged')
Plug 'vim-syntastic/syntastic'
Plug 'bryanmylee/vim-colorscheme-icons'
Plug 'nvie/vim-flake8'
Plug 'maralla/completor.vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim', { 'do': { -> fzf#install() } }        " Fuzzy file search
Plug 'sheerun/vim-polyglot' 
Plug 'davidhalter/jedi'        " Python auto-completor
Plug 'tomasr/molokai'          " Colorscheme 
Plug 'nanotech/jellybeans.vim' " Colorscheme 
Plug 'vim-airline/vim-airline' 
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'xolox/vim-session'
Plug 'xolox/vim-misc'
Plug 'junegunn/goyo.vim'       " Plugin for enabling focus mode 
Plug 'vim-airline/vim-airline'
Plug 'Shougo/deoplete.nvim'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline-themes'
Plug 'lervag/vimtex'
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
let g:python3_host_prog = "python"

" session management
let g:session_directory = "~/.config/nvim/session"
let g:session_autoload = "no"
let g:session_autosave = "no"
let g:session_command_aliases = 1

let g:chromatica#enable_at_startup=1

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

let g:indentLine_char = '│'
"let g:indent_blankline_space_char=' '
let g:indent_blankline_char='│'
let g:indent_blankline_indent_level = 4

let g:airline_theme = 'minimalist'
let g:airline_skip_empty_sections = 1
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#virtualenv#enabled = 1
let g:airline_powerline_fonts = 1

" Setting colorscheme
"set termguicolors
au ColorScheme * hi Normal ctermbg=None
colorscheme  jellybeans 
set background=dark

" Setting LaTex
filetype plugin on
filetype indent on
let g:tex_flavor='latex'
let g:vimtex_parser_bib_backend='bibtex'
filetype plugin indent on
syntax enable
let g:Tex_MultipleCompileFormats='pdf,bib,pdf'

