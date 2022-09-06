source $HOME/.config/nvim/plugins/plug.vim " must be first
source $HOME/.config/nvim/general/general.vim
source $HOME/.config/nvim/general/mappings.vim
source $HOME/.config/nvim/general/my_fns.vim
source $HOME/.config/nvim/general/my_cmds.vim
source $HOME/.config/nvim/plugins/easyalign.vim
" source $HOME/.config/nvim/plugins/coc.vim
source $HOME/.config/nvim/plugins/nerdtree.vim
source $HOME/.config/nvim/plugins/airline.vim
source $HOME/.config/nvim/plugins/fzf.vim
source $HOME/.config/nvim/plugins/quick-scope.vim
source $HOME/.config/nvim/plugins/equinusocio-material.vim
source $HOME/.config/nvim/plugins/vim-textobj.vim
source $HOME/.config/nvim/plugins/indentLine.vim
source $HOME/.config/nvim/plugins/surround.vim
source $HOME/.config/nvim/plugins/camelCaseMotion.vim
source $HOME/.config/nvim/plugins/vim-fugitive.vim
source $HOME/.config/nvim/plugins/vim-which-key.vim
set completeopt=menu,menuone,noselect
lua require("init")
lua require("cmp")

