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

" Enable ctags for scala. This also requires the following in your ~/.ctags
" file:
" --langdef=Scala
" --langmap=Scala:.scala
" --regex-Scala=/^[ \t]*(((implicit|private|public)?[
" \t]*)*(\[[a-zA-Z0-9_]*\])?[ \t]*)*class[ \t]*([a-zA-Z0-9_]+)/\5/c,classes/
" --regex-Scala=/^[ \t]*(((implicit|private|public)?[
" \t]*)*(\[[a-zA-Z0-9_]*\])?[ \t]*)*object[ \t]*([a-zA-Z0-9_]+)/\5/o,objects/
" --regex-Scala=/^[ \t]*trait[ \t]*([a-zA-Z0-9_]+)/\1/t,traits/
" --regex-Scala=/^[ \t]*case[ \t]*class[ \t]*([a-zA-Z0-9_]+)/\1/r,cclasses/
" --regex-Scala=/^[ \t]*abstract[ \t]*class[
" \t]*([a-zA-Z0-9_]+)/\1/a,aclasses/
" --regex-Scala=/[ \t]*(((implicit|override|lazy|private|public)?[
" \t]*)*(\[[a-zA-Z0-9_]*\])?[ \t]*)*def[ \t]*([a-zA-Z0-9_=]+)[
" \t]*.*[:={]/\5/m,methods/
" --regex-Scala=/[ \t]*(((override|lazy|private|public)?[
" \t]*)*(\[[a-zA-Z0-9_]*\])?[ \t]*)*val[ \t]*([a-zA-Z0-9_]+)[
" \t]*[:=]/\5/V,values/
" --regex-Scala=/[ \t]*(((override|lazy|private|public)?[
" \t]*)*(\[[a-zA-Z0-9_]*\])?[ \t]*)*var[ \t]*([a-zA-Z0-9_]+)[
" \t]*[:=]/\5/v,variables/
" --regex-Scala=/^[ \t]*type[ \t]*([a-zA-Z0-9_]+)[ \t]*[\[<>=]/\1/T,types/
" --regex-Scala=/^[ \t]*import[ \t]*([a-zA-Z0-9_{}., \t=>]+$)/\1/i,includes/
" --regex-Scala=/^[ \t]*package[ \t]*([a-zA-Z0-9_.]+$)/\1/p,packages/
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
nmap <F8> :TagbarToggle<CR>

" NERDTree
nmap <F9> :NERDTreeToggle<CR>

" Resizing windows
map <C-h> <C-w><
map <C-l> <C-w>>
map <C-j> <C-w>+
map <C-k> <C-w>-
