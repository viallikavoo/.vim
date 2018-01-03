set nocompatible
execute pathogen#infect()
:call pathogen#helptags()
filetype on
syntax on
colorscheme Tomorrow-Night
set backspace=indent,eol,start

set guifont=Menlo\ Regular:h18
set lines=35 columns=150
set colorcolumn=90
set number
set hidden
set history=100
let mapleader=" "
map <leader>s :source ~/.vimrc<CR>
filetype indent on
set hlsearch

"nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>
set showmatch

" Use arrows in insert mode
map <D-A-RIGHT> <C-w>l
map <D-A-LEFT> <C-w>h
map <D-A-DOWN> <C-w><C-w>
map <D-A-UP> <C-w>W

" Select all text in vim
map <C-a> <esc>ggVG<CR>

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬
