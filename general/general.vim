" Enable filetype detection
filetype plugin indent on

" Spaces > tabs
set tabstop=4
set shiftwidth=4
set expandtab
set mouse=a

set relativenumber
set number

set cc=80,120

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
set scrolloff=10

set termguicolors

set foldopen-=block

set formatoptions+=croqj " Fix auto comments for svl

let timeoutlen=10

autocmd BufRead,BufNewFile *.c0 set filetype=c
autocmd BufRead,BufNewFile *.c1 set filetype=c
autocmd BufRead,BufNewFile *.svjt set filetype=systemverilog
autocmd BufReadPost *.kt setlocal filetype=kotlin
autocmd BufReadPost *.kts setlocal filetype=kotlin

command! -nargs=0 LspLogClean :execute "!echo '' > $HOME/.local/state/nvim/lsp.log"

function! CopyModeCommand(action)
    if a:action ==# 'disable'
        set cc=80,120
        set relativenumber
        set number
        set mouse=a
        IndentLinesEnable
    elseif a:action ==# 'enable'
        set cc=
        set norelativenumber
        set nonumber
        set mouse=i
        IndentLinesDisable
    else
        echoerr "Invalid argument. Use ':CopyMode <enable/disable>'"
    endif
endfunction

command! -nargs=1 Copymode call CopyModeCommand(<f-args>)
