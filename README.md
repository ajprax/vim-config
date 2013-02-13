My vim configuration. To use this configuration:

```bash
sudo apt-get install exuberant-ctags
git clone --recursive https://github.com/robotoer/vim-config.git ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/ctagsrc ~/.ctags
# This line can be modified to link the generatetags script to any location on your $PATH environment variable.
sudo ln -s ~/.vim/generatetags /usr/local/bin/generatetags
```
