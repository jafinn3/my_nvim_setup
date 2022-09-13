" Enable filetype detection
filetype plugin indent on

" Spaces > tabs
set tabstop=4
set shiftwidth=4
set expandtab
set mouse=a

set relativenumber
set number

set cc=81

set hidden
syntax on
syntax enable            " Enables syntax highlighing
set nowrap               " Display long lines as just one line
set encoding=utf-8       " The encoding displayed
set pumheight=10         " Makes popup menu smaller
set fileencoding=utf-8   " The encoding written to file
set splitright           " Vertical splits will automatically be to the right
set t_Co=256             " Support 256 colors
set background=dark      " tell vim what the background color looks like

set ruler
set cursorline
set scrolloff=2

set termguicolors

set formatoptions+=croqj " Fix auto comments for svl
autocmd BufRead,BufNewFile *.c0 set filetype=c
autocmd BufRead,BufNewFile *.c1 set filetype=c
autocmd BufRead,BufNewFile *.svjt set filetype=systemverilog
