jafinn3's neovim setup
===================


This repository contains my complete, up to date neovim setup for Ubuntu 16.04. The installer file currently does not work, instead it serves as installation documentation. 

----------


Dependencies
-------------

This repository depends on neovim, Nodejs12+, python2.7, and python3.6+. The package `pynvim` must be installed for both python2.7 and python3.6.

**Install neovim**

    sudo add-apt-repository ppa:neovim-ppa/unstable
    sudo apt-get update
    sudo apt-get install neovim

**Install python3.6 (not native to Ubuntu 16)**

    sudo add-apt-repository ppa:deadsnakes/ppa
    sudo apt-get install python3.6
    python3.6 -m pip install --user setuptools
   
**Install python packages**
    
	python3.6 -m pip install --user pynvim
	python -m pip install --user pynvim

**Install Nodejs 12 (also not native to Ubuntu 16)**
`install_node_21.sh` is included in this repository.

    sudo apt-get purge nodejs npm 
    chmod +x install_node_12.sh
    ./install_node_12.sh
    sudo apt-get install nodejs


----------


## Plugins ##

I use `vim-plug` to install all of my neovim plugins. 

**Install vim-plug**

    sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dir \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

vim-plug looks at `plugins/plug.vim` to find plugins. `:PlugInstall` can be run from inside neovim to install all listed plugins. (`:PlugClean` will remove any plugins that are currently installed but not in `plugins/plug.vim`)

#### Conquer of Completion (CoC)
[CoC](https://github.com/neoclide/coc.nvim) is an Intellisense engine for vim. It provides linting, syntax highlighting, and autocompletion for many different filetypes. CoC extensions must be installed in order to make use of this plugin. I use:

    :CocInstall coc-tsserver coc-python coc-json coc-snippets coc-vimlsp coc-clangd
   If you use `coc-clangd`, it is required that you also run:
   

    :CocCommand clangd.install
The `coc-snippets` extension searches the `my_snippets/` directory for user snippets.

#### vim-airline
[vim-airline](https://github.com/vim-airline/vim-airline) provides a beautiful status bar at the bottom of the vim window. `plugins/airline.vim` has extra settings to provide buffer tabs at the top of the window. 

#### NERDTree
[NERDTree](https://github.com/preservim/nerdtree) shows a directory tree at the side of the vim window, similar in style to the popular IDE/GUI text editors. I've configured `Ctrl+n` to toggle NERDTree on/off.

#### fzf/fzf.vim/vim-rooter
[fzf](https://github.com/junegunn/fzf), [fzf.vim](https://github.com/junegunn/fzf.vim), and [vim-rooter](https://github.com/airblade/vim-rooter) combine to provide extremely easy project-directory searching. fzf itself is not a vim plugin, so follow install instructions from the linked GitHub repository. vim-rooter allows you to search in an entire git repository (marked by `.git`) instead of just child directories.

It is also required that you install [ripgrep.](https://github.com/BurntSushi/ripgrep)

Once everything is installed, you have access to these commands

    :Rg       # searches for a word/phrase within any file in the current git repository
    :FZF      # searches for a filename in the current git repository
	:Lines    # searches for text in all open buffers

#### vim-easy-align
[easy-align](https://github.com/junegunn/vim-easy-align) allows you to align multiple lines around a character, to create nicely formatted code like:

    char *first_name = "John"
    char *last_name  = "Smith"
    char *state      = "Maine"

To use, select the lines you wish to format and type 

    ga<character>     # where <character> is any of the available format options, 
		      # like =, ", [space], $, etc.
					
I've also included a custom setting to allow formatting around '(' which is useful for SystemVerilog.

#### quick-scope 
[quick-scope](https://github.com/unblevable/quick-scope) colors letters within words for jumps with `f/F/t/T`.

#### vim-textobj-user/vim-indent-object
[vim-textobj-user](https://github.com/kana/vim-textobj-user) provides a very easy way to define custom vim text objects. I've included settings to define begin/end blocks for SystemVerilog as well as standard C style block comments. [vim-indent-object](https://github.com/michaeljsmith/vim-indent-object) defines a text object for text on the same indentation level. 

    <command>ibe    # inner begin/end block
    <command>abe    # around begin/end block
    <command>i/     # inner /* */
    <command>a/     # around /* */
    <command>ii     # inner indentation level

#### indentLine
[indentLine](https://github.com/Yggdroot/indentLine) enables vertical lines in the window to indicate the tab levels. 

#### vim-surround
[vim-surround](https://github.com/tpope/vim-surround) allows easy insertion and deletion of 'surrounding' characters, like `{}, '', "", ()`, etc. Use:

    ys<text obj><char> 	# insert <char> around the text object
    ds<text obj><char>	# delete the surrounding <char>
    cs<char1><char2> 	# change surrounding <char1> to <char2>
    S<char>         	# in visual mode, surround selected block with <char>

#### systemverilog.vim
[systemverilog.vim](https://github.com/nachumk/systemverilog.vim) provides syntax highlighting and better indenting for SytemVerilog. I'm currently on the lookout for a better syntax highlighter though. 

#### equinusocio-material
[equinusocio-material](https://github.com/chuling/equinusocio-material.vim) is the theme I use for vim. 


