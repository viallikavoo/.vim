set nocompatible
execute pathogen#infect()
filetype on
syntax on
colorscheme Tomorrow-Night

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

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬
