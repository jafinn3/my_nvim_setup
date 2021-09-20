" Initialize plugins
call plug#begin(stdpath('data') . '/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Plug 'airblade/vim-rooter'
Plug 'unblevable/quick-scope'
Plug 'chuling/equinusocio-material.vim'
Plug 'michaeljsmith/vim-indent-object'
Plug 'kana/vim-textobj-user'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-surround'
Plug 'bkad/CamelCaseMotion'
Plug 'tpope/vim-surround'
Plug 'jackguo380/vim-lsp-cxx-highlight'
Plug 'tymonx/logic'
Plug 'kshenoy/vim-signature'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-obsession'
Plug 'liuchengxu/vim-which-key'
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
Plug 'sgur/vim-textobj-parameter'
Plug 'Julian/vim-textobj-variable-segment'

call plug#end()
