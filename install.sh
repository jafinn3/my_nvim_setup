#!/bin/bash

SHRC=$HOME/.zshrc
NVIM=$HOME/.config/nvim/
INIT=$NVIM/init.vim

curr_path=$(pwd)
cd $NVIM
install_neovim
install_python
install_nodejs
install_vimplug
configure_coc
install_fzf
install_rg
cd $curr_path

install_neovim() {
    if ! command -v nvim &> /dev/null
    then
        echo "Installing neovim..."
        wget https://github.com/neovim/neovim/releases/download/v0.4.4/nvim.appimage
        mv nvim.appimage $NVIM
        chmod u+x $NVIM/nvim.appimage

        echo "Adding neovim to \$PATH..."
        echo "export PATH=$NVIM/:\$PATH" >> $SHRC
    fi

    cd $NVIM
}

install_nodejs() {
    if ! command -v node &> /dev/null
    then
        echo "Installing node..."
        wget https://nodejs.org/dist/v14.17.0/node-v14.17.0.tar.gz
        mkdir $NVIM/node
        mv node-v14.17.0.tar.gz $NVIM/node/
        cd $NVIM/node/
        tar -xzf node-v14.17.0.tar.gz && rm node-v14.17.0.tar.gz
        ./configure --prefix/$NVIM/node/
        make -j4 && make install
    fi

    echo "Installing neovim node package..."
    npm install -g neovim

    cd $NVIM
}

install_python() {
    py_version=$(python -V 2>&1 | grep -Po '(?<=Python )(.+)')
    parsed_version=$(echo "${version//./}")

    if [[ "$parsed_version" -ge "300" ]]
    then
        echo "python3 found!"

    else
        echo "python3 not found. Building from source..."
        mkdir $NVIM/python3 && cd $NVIM/python3
        wget https://www.python.org/ftp/python/3.9.5/Python-3.9.5.tgz
        tar -xzf Python-3.9.5.tgz && rm Python-3.9.5.tgz
        cd Python-3.9.5/
        ./configure --prefix=$NVIM/python3/
        make && make install
        echo "let PYTHONPATH=$NVIM/python3/" >> $INIT
    fi

    echo "Installing pynvim..."
    python -m pip install --user pynvim

    cd $NVIM
}

install_vimplug() {
    echo "Installing vimplug..."
 	sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    nvim --headless +PlugInstall +UpdateRemotePlugins +qall

    cd $NVIM
}


configure_coc() {
    echo "Configuring CoC..."
    mkdir -p ~/.config/coc/extensions
    (
        extensions=(coc-tsserver coc-python coc-json coc-snippets coc-vimlsp coc-clangd)
        mkdir -p $NVIM/coc/extensions
        cd $NVIM/coc/extensions

        if [ ! -f package.json ]
        then
            echo '{"dependencies":{}}'> package.json
        fi

        npm install $extensions --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
        nvim --headless +"CocCommand clangd.install"
    )

    # snap install svls
    # snap install svlint
}

install_fzf() {
    echo "Installing FZF..."

    # Install fzf from github
    git clone --depth 1 https://github.com/junegunn/fzf.git $NVIM/.fzf
    $NVIM/.fzf/install
}

install_rg() {
    if ! command -v rg &> /dev/null
    then
        echo "Installing ripgrep..."
        curl -LO https://github.com/BurntSushi/ripgrep/releases/download/11.0.2/ripgrep_11.0.2_amd64.deb
        dpkg -i ripgrep_11.0.2_amd64.deb
    else
        echo "ripgrep found!"
    fi
}
