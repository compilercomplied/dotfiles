" \ **************************************************************************************** \
" \ General Binds 
" \ **************************************************************************************** \
" let mapleader = ","
let mapleader = "\<space>"

" source $MYVIMRC reloads the saved $MYVIMRC
nnoremap <Leader>fm :source $MYVIMRC<cr>
nnoremap <Leader>em :source $MYVIMRC<cr>

nnoremap <Leader>fh :mksession! session.vim<cr>

" Easy tab/untab
nnoremap <Tab> >>
nnoremap <S-Tab> << 
inoremap <S-Tab> <Esc><<i

" overload undo
inoremap <C-U> <C-G>u<C-U>

" easier help navigation
nnoremap <CR> <C-]>

" Toggle search result highlighting
nnoremap <silent><expr><Leader>hh (&hls && v:hlsearch ? ':nohls' : ':set hls')."\n"

" Fat finger's save
nnoremap :W :w

" save all
nnoremap <leader>fs :wa<cr>

" jk combination to enter normal mode
inoremap kj <esc>
inoremap jk <esc>

" easy macro access
nnoremap º @q

" paste overload
" noremap <Leader>y "*y
" noremap <Leader>p "*p
" noremap <Leader>Y "+y
" noremap <Leader>P "+p

nnoremap <Leader>eb :let &background = ( &background == "dark"? "light" : "dark" )<CR>




" \ **************************************************************************************** \
" \ Movement 
" \ **************************************************************************************** \

" don't skip lines that overflow when moving using JK
" nnoremap j gj
" nnoremap k gk

" These create newlines like o and O but stay in normal mode
nmap zj o<Esc>
nmap zk O<Esc>

" Reasonable terminal normal mode
tnoremap <Esc>  <C-\><C-n>
tnoremap kj     <C-\><C-n>
tnoremap jk     <C-\><C-n>

" Quickly close editor
nnoremap <leader>fQ :qa<cr>
" Close tab using c-w menu
noremap <C-w>q :q<cr>
nnoremap <leader>fq :q<cr>

" Use <leader>L|H to move panes between tabs
noremap <silent><leader>tml :call MoveToNextTab()<CR>
noremap <silent><leader>tmh :call MoveToPrevTab()<CR>

" Split line, the move to beginning of new line
noremap <leader>lj i<Enter><Esc>

" use J K in visual mode to move around selected block
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" whereas in normal mode J K moves between tabs
nnoremap <silent><leader>tk gt
nnoremap <silent><leader>tj gT



" \ **************************************************************************************** \
" \ Quick insertion 
" \ **************************************************************************************** \

" Bracket and parenthesis handling
" automatically adds closing brackets
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap { {}<Esc>i
inoremap " ""<Esc>i
inoremap ' ''<Esc>i

" Add ; to the end of the line
noremap <leader>ll A;<Esc>

" Add , to the end of the line
noremap <leader>lh A,<Esc>

" _( map to close within brackets/quotes selected text
vnoremap _[ <Esc>`>a]<Esc>`<i[<Esc>
vnoremap _{ <Esc>`>a}<Esc>`<i{<Esc>
vnoremap _( <Esc>`>a)<Esc>`<i(<Esc>
vnoremap _" <Esc>`>a"<Esc>`<i"<Esc>
vnoremap _' <Esc>`>a'<Esc>`<i'<Esc>
vnoremap _` <Esc>`>a`<Esc>`<i`<Esc>

" \ **************************************************************************************** \
" \ Buffers
" \ **************************************************************************************** \
nnoremap <leader>bd :bdelete<cr>
nnoremap <leader>bf :bfirst<cr>
nnoremap <leader>bl :blast<cr>
nnoremap <leader>bn :bnext<cr>
nnoremap <leader>bp :bprevious<cr>
nnoremap <leader>b# :b#<cr>
nnoremap <leader>bx :%bd\|e#<cr>


" \ **************************************************************************************** \
" \ Windows
" \ **************************************************************************************** \
nnoremap <C-W>jk :resize -5<cr>
nnoremap <C-W>ñj :resize +5<cr>

nnoremap <leader>ww <C-W>w
nnoremap <leader>wW <C-W>W
nnoremap <leader>ws <C-W>s
nnoremap <leader>wv <C-W>v
nnoremap <leader>wh <C-W>h
nnoremap <leader>wj <C-W>j
nnoremap <leader>wk <C-W>k
nnoremap <leader>wl <C-W>l
nnoremap <leader>w= <C-W>=
nnoremap <leader>wq <C-W>q
nnoremap <leader>wQ :qa<cr>
nnoremap <leader>wxh <C-W>5<
nnoremap <leader>wxj :resize +5<cr>
nnoremap <leader>wxk :resize -5<cr>
nnoremap <leader>wxl <C-W>5>
nnoremap <leader>wmh <C-W>H
nnoremap <leader>wmj <C-W>J
nnoremap <leader>wmk <C-W>K
nnoremap <leader>wml <C-W>L
