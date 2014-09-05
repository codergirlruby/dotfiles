execute pathogen#infect()
set shortmess+=I 
set autoindent
set hlsearch
set incsearch
set number
set ignorecase
set smartcase
set history=1000 
set undolevels=100
set nobackup
set noswapfile
nno remap ; :
set pastetoggle=<F2>
set tabstop=4
set shiftwidth=4
filetype plugin indent on
syntax enable
set background=dark
colorscheme solarized
let g:solarized_termcolors=256
let g:Powerline_symbols ='fancy'
set encoding=utf-8
set fillchars+=stl:\ ,stlnc:\
set laststatus=2
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
let g:airline_theme='base16'
