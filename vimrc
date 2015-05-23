set nocompatible
filetype off "required!

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
 
" Let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'

" Bundles
Plugin 'nono/vim-handlebars'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'editorconfig/editorconfig-vim'
" Clojure
Plugin 'guns/vim-clojure-static'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'tpope/vim-fireplace'
" Nodejs
Plugin 'digitaltoad/vim-jade'
"CoffeeScrip
Plugin 'kchmck/vim-coffee-script'
" Rails
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-bundler'
" Color themes
Plugin 'altercation/vim-colors-solarized'

call vundle#end()  " required
filetype plugin on " required

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
autocmd BufWritePre *.jade :%s/\s\+$//e
autocmd BufWritePre *.ino :%s/\s\+$//e " Arduino files
autocmd BufWritePre *.rb :%s/\s\+$//e
autocmd BufWritePre *.haml :%s/\s\+$//e
autocmd BufWritePre *.coffee :%s/\s\+$//e

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase
set ruler
set relativenumber 
set number 

autocmd QuickFixCmdPost *grep* cwindow

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
au Syntax clojure RainbowParenthesesToggle
au Syntax clojure RainbowParenthesesLoadRound
" Ruby
let g:syntastic_ruby_checkers = ['rubocop']
" Web
au BufRead,BufNewFile *.hbs set filetype=handlebars
au BufNewFile,BufRead *.less set filetype=css
au BufNewFile,BufRead *.jade set filetype=jade

filetype plugin indent on

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

" ctrlp ssttings
let g:ctrlp_custom_ignore = 'node_modules'

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
