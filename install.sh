#!/bin/bash

# Install dependencies:
echo "sudo apt-get install exuberant-ctags"
sudo apt-get install exuberant-ctags
echo

# Get the repository:
echo "git clone --recursive https://github.com/robotoer/vim-config.git ~/.vim"
git clone --recursive https://github.com/robotoer/vim-config.git ~/.vim
echo

# Symlink everything:
echo "ln -s ~/.vim/vimrc ~/.vimrc"
ln -s ~/.vim/vimrc ~/.vimrc
echo "ln -s ~/.vim/ctagsrc ~/.ctags"
ln -s ~/.vim/ctagsrc ~/.ctags
echo "ln -s ~/.vim/generatetags ~/bin/generatetags"
ln -s ~/.vim/generatetags ~/bin/generatetags
echo

# Eclim setup:
echo "If you want to use eclim, you must run the following commands:"
echo "  cd ~/.vim/eclim"
echo "  ant -Dvim.files=~/.vim/bundle/eclim -Declipse.home=/your/eclipse/home/dir"
