" Attmept to install vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'

if empty(glob(data_dir . '/autoload/plug.vim'))
	  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
	    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Initialize plugins
call plug#begin(stdpath('data') . '/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'michaeljsmith/vim-indent-object'
Plug 'kana/vim-textobj-user'
Plug 'Yggdroot/indentLine'
Plug 'bkad/CamelCaseMotion'
Plug 'tpope/vim-surround'
Plug 'jackguo380/vim-lsp-cxx-highlight'
Plug 'kshenoy/vim-signature'
Plug 'sgur/vim-textobj-parameter'
Plug 'Julian/vim-textobj-variable-segment'
Plug 'rcarriga/nvim-notify'
Plug 'f-person/git-blame.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'goolord/alpha-nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'sindrets/diffview.nvim'
Plug 'EdenEast/nightfox.nvim'
Plug 'akinsho/bufferline.nvim'
" Plug 'ggandor/lightspeed.nvim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tiagovla/scope.nvim'
Plug 'xiyaowong/virtcolumn.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'mfussenegger/nvim-dap'
Plug 'rcarriga/nvim-dap-ui'
Plug 'nvim-neotest/nvim-nio' " required for nvim-dap-ui...
Plug 'trmckay/based.nvim'
Plug 'lewis6991/gitsigns.nvim'
Plug 'udalov/kotlin-vim'
Plug 'gen740/SmoothCursor.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/nvim-treesitter-textobjects'
Plug 'SmiteshP/nvim-navic'
Plug 'Exafunction/codeium.vim', { 'tag': '1.8.49' }
Plug 'bronson/vim-visual-star-search'
Plug 'ggandor/leap.nvim'

call plug#end()
