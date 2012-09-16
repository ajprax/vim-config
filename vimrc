" Load vim-pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

" Ensure syntax highlighting is enabled
syntax on

" Enable file type detection (see vimdoc.sourceforge.net/htmldoc/filetype.html)
filetype plugin indent on

" Indentation settings
set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2

" Search settings
set hlsearch

" Enable mouse support in terminal (the 'a' stands for enable mouse in all
" modes
set mouse=a

" Enable ctags for scala and tagbar.
let g:tagbar_type_scala = {
    \ 'ctagstype' : 'Scala',
    \ 'kinds'     : [
        \ 'p:packages:1',
        \ 'V:values',
        \ 'v:variables',
        \ 'T:types',
        \ 't:traits',
        \ 'o:objects',
        \ 'a:aclasses',
        \ 'c:classes',
        \ 'r:cclasses',
        \ 'm:methods'
    \ ]
    \ }
set tags+=~/.tags
nmap <F8> :TagbarToggle<CR>

" NERDTree
nmap <F9> :NERDTreeToggle<CR>

" Resizing windows
map <C-h> <C-w><
map <C-l> <C-w>>
map <C-j> <C-w>+
map <C-k> <C-w>-
