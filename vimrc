set nocompatible
filetype off "required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
 
" Let Vundle manage Vundle
Bundle 'gmarik/vundle'

" Bundles
Bundle 'nono/vim-handlebars'
Bundle 'ervandew/supertab'
Bundle 'tpope/vim-fugitive'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
" Clojure
Bundle 'guns/vim-clojure-static'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'tpope/vim-fireplace'
Bundle 'tpope/vim-classpath'
" Color themes
Bundle 'altercation/vim-colors-solarized'

filetype plugin on
set hidden

" Autocompletion
autocmd FileType java set omnifunc=javacomplete#CompleteJS
autocmd FileType javavascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType ruby set omnifunc=rubycomplete#CompleteJS

" Delete trailing white chars on save
autocmd BufWritePre *.js :%s/\s\+$//e
autocmd BufWritePre *.html :%s/\s\+$//e
autocmd BufWritePre *.scss :%s/\s\+$//e
autocmd BufWritePre *.less :%s/\s\+$//e
autocmd BufWritePre *.ino :%s/\s\+$//e " Arduino files

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase
set ruler
set relativenumber 
set number 

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
colorscheme solarized
set ruler
set cursorline
set showmode
set showcmd
set tabstop=4
set shiftwidth=4
set expandtab

set smartindent
"set textwidth=80
"set columns=80
set nowrap

syntax on
" Clojure
au BufRead,BufNewFile *.clj set filetype=clojure
au BufRead,BufNewFile *.ino set filetype=cpp
au Syntax clojure RainbowParenthesesActivate
au Syntax clojure RainbowParenthesesLoadRound
" Web
au BufRead,BufNewFile *.hbs set filetype=handlebars
au BufNewFile,BufRead *.less set filetype=css

" Movement
nnoremap j gj
nnoremap k gk
" jj sends me back to normal mode
inoremap jj <ESC>

" spell checker options
map <F6> <Esc>:setlocal spell spelllang=en_us
map <F7> <Esc>:setlocal nospell

" Do not make swap files
set noswapfile

" Enable undofile for modern VIMs
if version >= 730
    set undofile
endif

let mapleader=','

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
