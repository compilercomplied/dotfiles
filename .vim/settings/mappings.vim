" \ **************************************************************************************** \
" \ General Binds 
" \ **************************************************************************************** \
" let mapleader = ","
let mapleader = "\<space>"

" source $MYVIMRC reloads the saved $MYVIMRC
nnoremap <Leader>s :source $MYVIMRC
" opens $MYVIMRC for editing
nnoremap <Leader>v :tabedit $MYVIMRC

" Easy tab/untab in IM and NM
nnoremap <C-Tab> a<C-t><Esc>
nnoremap <C-S-Tab> a<C-d><Esc>
inoremap <C-Tab> <C-t>
inoremap <C-S-Tab> <C-d>

" overload undo
inoremap <C-U> <C-G>u<C-U>

" easier help navigation
nnoremap <CR> <C-]>

" save
noremap <Leader>w :update<CR>

" maps F2 to netrw
noremap <F2> :call ToggleVExplorer()<cr>

" Show unwanted spaces
noremap <F12> :ShowSpaces 1<CR>

" Remove unwanted spaces
noremap <S-F12> m`:TrimSpaces<CR>``

" Toggle search result highlighting
nnoremap <silent><expr> <Leader>h (&hls && v:hlsearch ? ':nohls' : ':set hls')."\n"

" Fat finger's save
nnoremap :W :w

" jk combination to enter normal mode
inoremap kj <esc>
inoremap jk <esc>



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
noremap <C-w>A :qa<cr>
" Close tab using c-w menu
noremap <C-w>q :q<cr>

" Use <leader>L|H to move panes between tabs
nmap <leader>L :call MoveToNextTab()<CR>
nmap <leader>H :call MoveToPrevTab()<CR>

" Split line, the move to beginning of new line
noremap <leader>n i<Enter><Esc>

" use J K in visual mode to move around selected block
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" whereas in normal mode J K moves between tabs
nnoremap K gt
nnoremap J gT



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
noremap <leader>l A;<Esc>

" Add , to the end of the line
noremap <leader>m A,<Esc>

" _( map to close within brackets/quotes selected text
vnoremap _[ <Esc>`>a]<Esc>`<i[<Esc>
vnoremap _{ <Esc>`>a}<Esc>`<i{<Esc>
vnoremap _( <Esc>`>a)<Esc>`<i(<Esc>
vnoremap _" <Esc>`>a"<Esc>`<i"<Esc>
vnoremap _' <Esc>`>a'<Esc>`<i'<Esc>
vnoremap _` <Esc>`>a`<Esc>`<i`<Esc>
