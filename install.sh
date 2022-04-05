#!/bin/bash

sudo apt update
sudo apt install vim git ctags build-essential cmake vim python3-dev
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
mkdir -p ~/.vim/indent
cp ./python.vim ~/.vim/indent/python.vim
cp ./vimrc ~/.vimrc
vim +PluginInstall +qall
env python3 ~/.vim/bundle/YouCompleteMe/install.py --clang-completer
env python3 -m pip install flake8
echo 'set editing-mode vi' > ~/.inputrc
