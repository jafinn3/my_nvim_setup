jafinn3's neovim setup
===================


This repository contains my complete, up to date neovim setup.

----------


Dependencies
-------------
- [nvim v0.7.2+](https://github.com/neovim/neovim/wiki/Installing-Neovim)
- [Python3](https://www.python.org/downloads/)
- pynvim
- [Nodejs v14.17.1+](https://nodejs.org/en/download/package-manager/)
- npm v6.14.13+
- [fzf](https://github.com/junegunn/fzf) 
- [ripgrep](https://github.com/BurntSushi/ripgrep)
- [svlangserver](https://github.com/imc-trading/svlangserver)
- [clangd](https://clangd.llvm.org/installation.html)
- A patched font (or, kitty + symbol mapping)

----------


## Plugins ##

I use `vim-plug` to install all of my neovim plugins. The file `plugins/plug.vim` stores `vim-plug`'s list of plugins. All vimscript configurations for plugins are stored in `plugins/`, and lua configurations are stored in `lua/config`.

These are my "functional" plugins:
- [lightspeed](https://github.com/ggandor/lightspeed.nvim)
- [CoC](https://github.com/neoclide/coc.nvim)
- [vim-easy-align](https://github.com/junegunn/vim-easy-align)
- [fzf](https://github.com/junegunn/fzf.vim)
- [vim-rooter](https://github.com/airblade/vim-rooter)
- [vim-indent-object](https://github.com/michaeljsmith/vim-indent-object)
- [vim-textobj-user](https://github.com/kana/vim-textobj-user)
- [vim-textobj-parameter](https://github.com/sgur/vim-textobj-parameter)
- [vim-textobj-variable-segment](https://github.com/Julian/vim-textobj-variable-segment)
- [vim-surround](https://github.com/tpope/vim-surround)
- [CamelCaseMotion](https://github.com/bkad/CamelCaseMotion)
- [vim-fugitive](https://github.com/tpope/vim-fugitive)
- [plenary](https://github.com/nvim-lua/plenary.nvim)

And here are my quality-of-life/visual improvement plugins:
- [nightfox](https://github.com/EdenEast/nightfox.nvim)
- [nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- [nvim-tree](https://github.com/kyazdani42/nvim-tree.lua)
- [bufferline](https://github.com/akinsho/bufferline.nvim)
- [vim-airline](https://github.com/vim-airline/vim-airline)
- [alpha-nvim](https://github.com/goolord/alpha-nvim)
- [vim-lsp-cxx-highlight](https://github.com/jackguo380/vim-lsp-cxx-highlight)
- [vim-signature](https://github.com/kshenoy/vim-signature)
- [vim-which-key](https://github.com/liuchengxu/vim-which-key)
- [nvim-notify](https://github.com/rcarriga/nvim-notify)
- [indentLine](https://github.com/Yggdroot/indentLine)
- [git-blame](https://github.com/f-person/git-blame.nvim)

## Commands & mappings ##
Here's a list of commands and mappings that I use most often. 

- For my \<leader\>, I use 's'. This might bug you if you dislike overwriting native vim commands, so feel free to change this to your preference. I never used s anyway.
- \<leader\>s invokes lightspeed, my go-to for navigation
- ga\<text object\><character\> aligns text. This is useful for aligning spaces or = in code
- \<leader\>gd opens a git diff view, then gdh or gdl will select which commit to use when working with merge conflicts
- ys\<text object\><surround\> (and S<text object\><surround\> in visual mode) invokes vim-surround (ds<...\> deletes a surround). Common ones are ysiw", ysiw], ysiw), ysiwf, etc.
- \<C-n\> opens nvim-tree
- \<C-f\> opens an FZF file search window
- \<leader\>rg opens a ripgrep search window
- \<leader\>n/<leader\>N cycles through active buffers. <leader\>b opens a fuzzy search through active buffers
- \<tab\> autocomplete if available
- gd goes to definition of symbol if available
- \<C-w\>v to split your window
- \<C-l\> and <C-h\> to navigate through panes


And here are some custom text objects that I use frequently:
- iv/av: select in/around variable segments (like for camelCasedWords or snake_cased_words)
- i,/a,: select in/around a parameter to a function (or similarly structured syntax)
- ii/ai: select in/around text at the same indent level
- ibe/abe: select in/around begin/end, used solely for SystemVerilog
- i/ and a/: select in/around multiline C-style comment blocks



