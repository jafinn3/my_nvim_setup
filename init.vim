source $HOME/.config/nvim/plugins/plug.vim " must be first
source $HOME/.config/nvim/general/general.vim
source $HOME/.config/nvim/general/mappings.vim
source $HOME/.config/nvim/plugins/easyalign.vim
source $HOME/.config/nvim/plugins/fzf.vim
source $HOME/.config/nvim/plugins/nightfox.vim
source $HOME/.config/nvim/plugins/vim-textobj.vim
source $HOME/.config/nvim/plugins/indentLine.vim
source $HOME/.config/nvim/plugins/surround.vim
source $HOME/.config/nvim/plugins/camelCaseMotion.vim
source $HOME/.config/nvim/plugins/vim-which-key.vim
source $HOME/.config/nvim/plugins/lightspeed.vim
source $HOME/.config/nvim/plugins/nvimtree.vim
source $HOME/.config/nvim/plugins/diffview.vim
source $HOME/.config/nvim/plugins/git-blame.vim
source $HOME/.config/nvim/plugins/gutentags.vim
source $HOME/.config/nvim/plugins/codeium.vim
source $HOME/.config/nvim/general/project_config.vim

set completeopt=menu,menuone,noselect
lua require("init")
