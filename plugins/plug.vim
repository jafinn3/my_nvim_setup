" Initialize plugins
call plug#begin(stdpath('data') . '/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree'
Plug 'dracula/vim', {'name': 'dracula'} " for vim theme
" Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'
Plug 'vim-airline/vim-airline'
call plug#end()
