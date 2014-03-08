My vim configuration. To use this configuration:

```bash
# Install dependencies:
sudo apt-get install exuberant-ctags

# Get the repository:
git clone --recursive https://github.com/robotoer/vim-config.git ~/.vim

# Symlink everything:
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/ctagsrc ~/.ctags
ln -s ~/.vim/generatetags ~/bin/generatetags
```

For the lazy the following can be run instead:

```bash
bash <(curl -s https://raw.github.com/robotoer/vim-config/master/install.sh)
```

If you are using gnome-terminal and want the solarized color theme that this
vim configuration uses: https://github.com/sigurdga/gnome-terminal-colors-solarized.
For more information about the solarized color theme: http://ethanschoonover.com/solarized
