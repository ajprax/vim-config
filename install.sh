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
