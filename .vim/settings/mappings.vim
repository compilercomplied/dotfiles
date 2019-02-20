" \ **************************************************************************************** \
" \ General Binds 
" \ **************************************************************************************** \
" let mapleader = ","
let mapleader = "\<space>"

" source $MYVIMRC reloads the saved $MYVIMRC
nnoremap <Leader>fm :source $MYVIMRC<cr>
" opens $MYVIMRC for editing
nnoremap <Leader>v :tabedit $MYVIMRC<cr>

" Easy tab/untab
nnoremap <Tab> >>
nnoremap <S-Tab> << 

" overload undo
inoremap <C-U> <C-G>u<C-U>

" easier help navigation
nnoremap <CR> <C-]>

" maps F2 to netrw
noremap <F2> :call ToggleVExplorer()<cr>

" Show unwanted spaces
noremap <F12> :ShowSpaces 1<CR>

" Remove unwanted spaces
noremap <S-F12> m`:TrimSpaces<CR>``

" Toggle search result highlighting
nnoremap <silent><expr> <Leader>hh (&hls && v:hlsearch ? ':nohls' : ':set hls')."\n"

" Fat finger's save
nnoremap :W :w

" save all
nnoremap <leader>fs :wa<cr>

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
