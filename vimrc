set nocompatible
filetype off " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
 
" Let Vundle manage Vundle
Bundle 'gmarik/vundle'

" Bundle 'Solarized'
"Bundle 'vim-scripts/neocomplcache'
Bundle 'ervandew/supertab'
Bundle 'tpope/vim-fugitive'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/syntastic'
Bundle 'myusuf3/numbers.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'ervandew/eclim'
Bundle 'haesken/vimclojure-vundle'

filetype plugin on

set hidden

" Autocompletion
autocmd FileType java set omnifunc=javacomplete#CompleteJS
autocmd FileType javavascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType ruby set omnifunc=rubycomplete#CompleteJS

set tabstop=4
set shiftwidth=4
set expandtab
autocmd BufWritePre *.js :%s/\s\+$//e
autocmd BufWritePre *.html :%s/\s\+$//e
autocmd BufWritePre *.scss :%s/\s\+$//e

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

set ruler

set wildignore+=*/tmp/*,*/distribution/*,.* 

if has('statusline')
    set laststatus=2

"       " Broken down into easily includeable segments
    set statusline=%<%f\    " Filename
"       set statusline+=%w%h%m%r " Options
"       set statusline+=%{fugitive#statusline()} "  Git Hotness
"       set statusline+=\ [%{&ff}/%Y]            " filetype
"       set statusline+=\ [%{getcwd()}]          " current dir
    set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
endif

" UI
set t_Co=256
set background=dark
colorscheme molokai
set ruler
set cursorline
set showmode
set showcmd

set smartindent
"set textwidth=80
"set columns=80
"set wrap

syntax on
"set linebreak
let g:syntastic_javascript_jshint_conf = '~/Sites/GD/gdc-client/deployment/jslint/jsl-mac'


" Movement
nnoremap j gj
nnoremap k gk

" spell checker options
map <F6> <Esc>:setlocal spell spelllang=en_us
map <F7> <Esc>:setlocal nospell

set noswapfile
if version >= 730
    set undofile
endif

let mapleader=','
" jj sends me back to normal mode
inoremap jj <ESC>

" append closing brackets
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
" inoremap {{     {
 inoremap {}     {}

"" close brackets and quotes
inoremap (      ()<Left>
inoremap ((     (

inoremap "      ""<Left>
inoremap ""     "

inoremap '      ''<Left>
inoremap ''     '

