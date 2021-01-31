set nocompatible              " required
filetype off                  " required
set backspace=2
" set the runtime path to include Vundle and initialize

" alternatively, pass a path where Vundle should install plugins
call plug#begin('~/.local/share/nvim/plugged')

" let Vundle manage Vundle, required
Plug 'gmarik/Vundle.vim'
Plug 'tmhedberg/SimpylFold'
Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8'
Plug 'scrooloose/nerdtree'
Plug 'maralla/completor.vim'
Plug 'vim-scripts/taglist.vim'
Plug 'junegunn/fzf.vim'
Plug 'sheerun/vim-polyglot' 
Plug 'davidhalter/jedi'
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'tomasr/molokai'
Plug 'jacoborus/tender'
Plug 'jnurmine/Zenburn'
Plug 'tomasiser/vim-code-dark'
Plug 'chriskempson/base16-vim'
Plug 'keith/parsec.vim'
Plug 'dikiaap/minimalist'
Plug 'nanotech/jellybeans.vim'
Plug 'vim-airline/vim-airline'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'sts10/vim-pink-moon'
Plug 'gosukiwi/vim-atom-dark'
Plug 'simeji/winresizer'
Plug 'xolox/vim-session'
Plug 'xolox/vim-misc'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'junegunn/goyo.vim'
"Plug 'numirias/semshi'

" All of your Plugins must be added before the following line
call plug#end()            " required
filetype plugin indent off    " required

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

"set t_Co=256
syntax on
set ts=4 sw=4 et 

let g:indent_guides_start_level=1
let g:indent_guides_guide_size=1
"let g:indentLine_setConceal=1

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
"set listchars=tab:>-,trail:·,extends:>,precedes:<
set list
set nowrap

au ColorScheme * hi Normal ctermbg=None
colorscheme onedark
set background=dark

