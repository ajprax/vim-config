" Load vim-pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

" Ensure syntax highlighting is enabled
syntax on
set background=dark
colorscheme solarized

" Enable file type detection (see vimdoc.sourceforge.net/htmldoc/filetype.html)
filetype plugin indent on

" Indentation settings
set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2

" Enable line numbers
set nu

" Display column 100
set colorcolumn=100

" Search settings
set hlsearch
set incsearch

" Enable mouse support in terminal (the 'a' stands for enable mouse in all
" modes
set mouse=a
"set ttymouse=urxvt " Fix for mouse clicks past col 223 while using rxvt-unicode

" Enable status line even with only one buffer open
set laststatus=2

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

" Maven compilation
map <F4> :Mvn clean<CR>:redr!<CR>
map <F5> :Mvn test<CR>:redr!<CR>
map <F6> :Mvn verify<CR>:redr!<CR>
map <F7> :Mvn install<CR>:redr!<CR>

" Eclim keybindings
nmap <C-i> :JavaImport<CR>
nmap <C-c> :JavaCorrect<CR>
nmap <F3> :JavaSearchContext<CR>
if has("gui_running")
  inoremap <C-Space> <C-x><C-u>
else
  inoremap <Nul> <C-x><C-u>
endif

" Markdown
au BufRead,BufNewFile *.md set filetype=markdown

set t_Co=256

" Set default splits to vertical, not horizontal.
let g:EclimBuffersDefaultAction = 'vs'
let g:EclimDefaultFileOpenAction = 'vs'

set guifont=Ubuntu\ Mono\ 9

" Keybindings for using the external clipboard
nnoremap <F10> "+y
vnoremap <F10> "+y
nnoremap <F11> "+gP
vnoremap <F11> "+gP

" Make YouCompleteMe and eclim play nice together
let g:EclimCompletionMethod = 'omnifunc'
