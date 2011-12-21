call pathogen#infect()

set nocompatible
set filetype=on

set tabstop=4
set shiftwidth=4
set expandtab

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" UI
set ruler
set cursorline
set showmode
"set relativenumber
set showcmd

set smartindent
set textwidth=100
set columns=100
set wrap

syntax on
"set linebreak

" Movement
nnoremap j gj
nnoremap k gk

" spell checker options
map <F6> <Esc>:setlocal spell spelllang=en_us
map <F7> <Esc>:setlocal nospell

set undofile
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
