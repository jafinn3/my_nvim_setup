" Initialize plugins
call plug#begin(stdpath('data') . '/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree'
Plug 'dracula/vim', {'name': 'dracula'} " for vim theme
Plug 'vim-airline/vim-airline'
Plug 'nachumk/systemverilog.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'              " So that fzf only searches the git 
                                        " repo

call plug#end()
