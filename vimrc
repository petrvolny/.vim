call pathogen#infect()
filetype plugin on
set nocompatible
set filetype=on
set hidden
filetype plugin on

" Autocompletion
autocmd FileType java set omnifunc=javacomplete#CompleteJS
autocmd FileType javavascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType ruby set omnifunc=rubycomplete#CompleteJS

set tabstop=4
set shiftwidth=4
set expandtab
autocmd BufWritePre *.js :%s/\s\+$//e

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" UI
set t_Co=256
set background=dark
colorscheme molokai
set ruler
set cursorline
""set colorcolumn=80
set showmode
""set relativenumber
set showcmd

set smartindent
set textwidth=80
set columns=80
set wrap

syntax on
"set linebreak

" Movement
nnoremap j gj
nnoremap k gk

" spell checker options
map <F6> <Esc>:setlocal spell spelllang=en_us
map <F7> <Esc>:setlocal nospell

if version >= 730
    set undofile
endif
" jj sends me back to normal mode
inoremap jj <ESC>

" append closing brackets
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

"" close brackets and quotes
inoremap (      ()<Left>
inoremap "      ""<Left>
