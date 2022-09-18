" Initialize plugins
call plug#begin(stdpath('data') . '/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'scrooloose/nerdtree'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
" Plug 'unblevable/quick-scope'
" Plug 'yunlingz/equinusocio-material.vim'
Plug 'michaeljsmith/vim-indent-object'
Plug 'kana/vim-textobj-user'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-surround'
Plug 'bkad/CamelCaseMotion'
Plug 'tpope/vim-surround'
Plug 'jackguo380/vim-lsp-cxx-highlight'
" Plug 'tymonx/logic'
Plug 'kshenoy/vim-signature'
Plug 'tpope/vim-fugitive'
Plug 'liuchengxu/vim-which-key'
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
Plug 'sgur/vim-textobj-parameter'
Plug 'Julian/vim-textobj-variable-segment'
Plug 'rcarriga/nvim-notify'
Plug 'f-person/git-blame.nvim'
" Plug 'phaazon/hop.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'goolord/alpha-nvim'
Plug 'nvim-lua/plenary.nvim'
" Plug 'sindrets/diffview.nvim'
Plug 'EdenEast/nightfox.nvim'
Plug 'akinsho/bufferline.nvim'
Plug 'ggandor/lightspeed.nvim'
call plug#end()
