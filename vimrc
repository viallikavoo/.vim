" -----------------------------------------------PathogenSetup-----------------------------------------------------------------------------
set nocompatible
execute pathogen#infect()
:call pathogen#helptags()
filetype on
" syntax on
" colorscheme Tomorrow-Night
set backspace=indent,eol,start

" set lines=35 columns=150
" set colorcolumn=90
:set numberwidth=3
set number
set hidden
set history=100
filetype indent on
set hlsearch
set showmatch


" -----------------------------------------------Leader Mapping-----------------------------------------------------------------------------
let mapleader=" "
map <leader>s :source ~/.vimrc<CR>

" -----------------------------------------------All Mappings-----------------------------------------------------------------------------
" Use arrows in insert mode
map <D-A-RIGHT> <C-w>l
map <D-A-LEFT> <C-w>h
map <D-A-DOWN> <C-w><C-w>
map <D-A-UP> <C-w>W
" Select all text in vim
map <C-a> <esc>ggVG<CR>i
nnoremap <CR> G

" Jump to end of line in insert mode
inoremap <C-e> <C-o>$

" Jump to start of line in insert mode
inoremap <C-s> <C-o>0

" switch to visual mode and extend selection upwards
:imap <S-Up> <esc>v<Up>
" make sure the same key combination works in visual mode
:vmap <S-Up> <Up>

" do the same for other arrow keys
:imap <S-Down> <esc>v<Down>
:vmap <S-Down> <Down>
:imap <S-Left> <esc>v<Left>
:vmap <S-Left> <Left>
:imap <S-Right> <esc>v<Right>
:vmap <S-Right> <Right>


" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>
" Show/hide line numbers 
noremap <C-L> :set invnumber<CR>
inoremap <C-L> <C-O>:set invnumber<CR>
" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

" To move and reorder line in vim
" n normal mode or in insert mode, press Alt-j to move the current line down, or press Alt-k to move the current line up.
nnoremap <C-d> :m .+1<CR>==
nnoremap <C-u> :m .-2<CR>==
inoremap <C-d> <Esc>:m .+1<CR>==gi
inoremap <C-u> <Esc>:m .-2<CR>==gi
vnoremap <C-d> :m '>+1<CR>gv=gv
vnoremap <C-u> :m '<-2<CR>gv=gv

" -----------------------------------------------Nerd Commenter Plugin-----------------------------------------------------------------------------
" ########################Start fo the commenter plugin below
filetype plugin on

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" [count]<leader>cc |NERDComComment|
"
" Comment out the current line or text selected in visual mode.
"
" [count]<leader>cn |NERDComNestedComment|
"
" Same as cc but forces nesting.
"
" [count]<leader>c<space> |NERDComToggleComment|
"
" Toggles the comment state of the selected line(s). If the topmost selected line is commented, all selected lines are uncommented and vice versa.
"
" [count]<leader>cm |NERDComMinimalComment|
"
" Comments the given lines using only one set of multipart delimiters.
"
" [count]<leader>ci |NERDComInvertComment|
"
" Toggles the comment state of the selected line(s) individually.
"
" [count]<leader>cs |NERDComSexyComment|
"
" Comments out the selected lines with a pretty block formatted layout.
"
" [count]<leader>cy |NERDComYankComment|
"
" Same as cc except that the commented line(s) are yanked first.
"
" <leader>c$ |NERDComEOLComment|
"
" Comments the current line from the cursor to the end of line.
"
" <leader>cA |NERDComAppendComment|
"
" Adds comment delimiters to the end of line and goes into insert mode between them.
"
" |NERDComInsertComment|
"
" Adds comment delimiters at the current cursor position and inserts between. Disabled by default.
"
" <leader>ca |NERDComAltDelim|
"
" Switches to the alternative set of delimiters.
"
" [count]<leader>cl
" [count]<leader>cb |NERDComAlignedComment|
"
" Same as |NERDComComment| except that the delimiters are aligned down the left side (<leader>cl) or both sides (<leader>cb).
"
" [count]<leader>cu |NERDComUncommentLine|
"
" Uncomments the selected line(s).
" ######################################## End of commenter plugin


" -----------------------------------------------Solarized theme vim editor-----------------------------------------------------------------------------
" For solarised theme on the vim editor
syntax enable
" set background=dark
colorscheme solarized
let g:solarized_termcolors=256
if has('gui_running')
    set background=light
else
    set background=dark
endif
" -----------------------------------------------SAVE VIEWS-----------------------------------------------------------------------------
au BufWinLeave * mkview
au BufWinEnter * silent loadview
" -----------------------------------------------SAVE VIEWS-----------------------------------------------------------------------------

" y is to yank or copy tet
" p is to paste below cursor
" G$ to go to end of file
" w - jump by start of words (punctuation considered words)
" W - jump by words (spaces separate words)
" e - jump to end of words (punctuation considered words)
" E - jump to end of words (no punctuation)
" b - jump backward by words (punctuation considered words)
" B - jump backward by words (no punctuation)
" 0 - (zero) start of line
" ^ - first non-blank character of line
" $ - end of line
" G - Go To command (prefix with number - 5G goes to line 5)
" yy - yank (copy) a line
" 2yy - yank 2 lines
" yw - yank word
" y$ - yank to end of line
" p - put (paste) the clipboard after cursor
" P - put (paste) before cursor
" dd - delete (cut) a line
" dw - delete (cut) the current word
" x - delete (cut) current character
" gg to go to start of file
" G$ to go to the end of file" 
" space cc for comment
" space c space for unncomment
" space l for toggling list which will highlight unwanted spaces 
" space t for command t
" ctrl e is end of line
" ctrl s is start of line
" ctrl d to move line down
" ctrl u to move line up
" za to toggle fold
" zf to start fold after selecting the required text
" zm to close all folds
" zr to open all folds
" ctrl l to toggle line numbers
