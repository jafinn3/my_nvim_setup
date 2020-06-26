#!/bin/bash

install_neovim
install_nodejs
install_python36
install_vimplug
configure_coc


install_neovim() {
  add-apt-repository ppa:neovim-ppa/unstable
  apt-get update -y
  apt-get install neovim -y
}
	
install_nodejs() {
  apt-get purge nodejs npm -y
  ./install_node_12.sh
  apt-get install nodejs -y
}
	
install_python36() {
  add-apt-repository ppa:deadsnakes/ppa -y
  apt-get install python3.6 -y
  python3.6 -m pip install --user setuptools -y
   
  
  # Install neovim package for Python 
  python3.6 -m pip install --user pynvim
  python -m pip install --user pynvim 

  # Install jedi for deoplete-jedi
  python3.6 -m pip install --user jedi
}

install_vimplug() {
 	sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  nvim --headless +PlugInstall +UpdateRemotePlugins +qall 
}


configure_coc() {
  mkdir -p ~/.config/coc/extensions
(
  extensions=(coc-tsserver coc-python coc-json coc-snippets coc-vimlsp coc-clangd)
  cd ~/.config/coc/extensions
  if [ ! -f package.json ]
  then
    echo '{"dependencies":{}}'> package.json
  fi 
  npm install $extensions --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
  nvim --headless +"CocCommand clangd.install" 
)

  snap install svls
  snap install svlint
}
