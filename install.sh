#!/bin/bash

sudo apt update
sudo apt install vim git ctags build-essential cmake vim python3-dev
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
/bin/mkdir -p ~/.vim/indent
/bin/cp ./python.vim ~/.vim/indent/python.vim
/bin/cp ./vimrc ~/.vimrc
/bin/vim +PluginInstall +qall
/bin/env python3 ~/.vim/bundle/YouCompleteMe/install.py --clang-completer
/bin/env python3 -m pip install flake8
echo 'set editing-mode vi' > ~/.inputrc