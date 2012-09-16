My vim configuration. To use this configuration:

```bash
wget http://www.scala-lang.org/sites/default/files/linuxsoft_archives/downloads/distrib/files/scala-2.9.1.final.tgz
tar xvf scala-2.9.1.final.tgz
sudo mv scala-2.9.1.final /usr/local/
sudo apt-get install exuberant-ctags
git clone --recursive https://github.com/robotoer/vim-config.git ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/ctagsrc ~/.ctags
# This line can be modified to link the generatetags script to any location on your $PATH environment variable.
sudo ln -s ~/.vim/generatetags /usr/local/bin/generatetags
```
