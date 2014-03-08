" Load vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Installed/used bundles
Bundle 'gmarik/vundle'

Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-eunuch'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'majutsushi/tagbar'
Bundle 'bronson/vim-trailing-whitespace'
Bundle 'mikelue/vim-maven-plugin'
Bundle 'altercation/vim-colors-solarized'
Bundle 'derekwyatt/vim-scala'
Bundle 'Lokaltog/vim-powerline'
Bundle 'tfnico/vim-gradle'
Bundle 'mattn/webapi-vim'
Bundle 'vim-scripts/logpad.vim'
Bundle 'Valloric/YouCompleteMe'
Bundle 'dln/avro-vim'
Bundle 'dart-lang/dart-vim-plugin'

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

" Markdown
au BufRead,BufNewFile *.md set filetype=markdown

set t_Co=256

set guifont=Ubuntu\ Mono\ 9

" Keybindings for using the external clipboard
nnoremap <F10> "+y
vnoremap <F10> "+y
nnoremap <F11> "+gP
vnoremap <F11> "+gP

" Make YouCompleteMe and eclim play nice together
let g:EclimCompletionMethod = 'omnifunc'

" Configure syntastic
let g:syntastic_python_checkers=['flake8']

" Automatically use avro-vim
au BufRead,BufNewFile *.avdl setlocal filetype=avro-idl

" Indent Python in the Google way.
setlocal indentexpr=GetGooglePythonIndent(v:lnum)

let s:maxoff = 50 " maximum number of lines to look backwards.

function GetGooglePythonIndent(lnum)

  " Indent inside parens.
  " Align with the open paren unless it is at the end of the line.
  " E.g.
  "   open_paren_not_at_EOL(100,
  "                         (200,
  "                          300),
  "                         400)
  "   open_paren_at_EOL(
  "       100, 200, 300, 400)
  call cursor(a:lnum, 1)
  let [par_line, par_col] = searchpairpos('(\|{\|\[', '', ')\|}\|\]', 'bW',
        \ "line('.') < " . (a:lnum - s:maxoff) . " ? dummy :"
        \ . " synIDattr(synID(line('.'), col('.'), 1), 'name')"
        \ . " =~ '\\(Comment\\|String\\)$'")
  if par_line > 0
    call cursor(par_line, 1)
    if par_col != col("$") - 1
      return par_col
    endif
  endif

  " Delegate the rest to the original function.
  return GetPythonIndent(a:lnum)

endfunction

let pyindent_nested_paren="&sw*2"
let pyindent_open_paren="&sw*2"
