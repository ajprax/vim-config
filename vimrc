# Load vim-pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

# Ensure syntax highlighting is enabled
syntax on

# Enable file type detection (see vimdoc.sourceforge.net/htmldoc/filetype.html)
filetype plugin indent on
