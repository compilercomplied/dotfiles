" \ **************************************************************************************** \
" \ General Binds 
" \ **************************************************************************************** \
let mapleader = ","

" set t_ku=OA
" set t_kd=OB
" set t_kr=OC
" set t_kl=OD
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

" \ **************************************************************************************** \
" \ Accesibility 
" \ **************************************************************************************** \
" Fat finger's save
noremap :W :w
" don't skip lines that overflow when moving using JK
" nnoremap j gj
" nnoremap k gk

" maps F2 to netrw
noremap <F2> :call ToggleVExplorer()<cr>
" maps F3 to tagbar
noremap <F3> :TagbarToggle<CR>
" Use LH to move panes between tabs
nmap <leader>L :call MoveToNextTab()<CR>
nmap <leader>H :call MoveToPrevTab()<CR>
" Split line, the move to beginning of new line
noremap <leader>n i<Enter><Esc>
" Show unwanted spaces
noremap <F12> :ShowSpaces 1<CR>
" Remove unwanted spaces
noremap <S-F12> m`:TrimSpaces<CR>``

" INSERT MODE
" Bracket and parenthesis handling
" automatically adds closing brackets
"inoremap ( ()<Esc>i
"inoremap [ []<Esc>i
"inoremap { {}<Esc>i
"inoremap " ""<Esc>i
"inoremap ' ''<Esc>i
" jk combination to enter normal mode
inoremap kj <esc>
inoremap jk <esc>

" VISUAL MODE
" _( map to close within brackets/quotes selected text
vnoremap _[ <Esc>`>a]<Esc>`<i[<Esc>
vnoremap _{ <Esc>`>a}<Esc>`<i{<Esc>
vnoremap _( <Esc>`>a)<Esc>`<i(<Esc>
vnoremap _" <Esc>`>a"<Esc>`<i"<Esc>
vnoremap _' <Esc>`>a'<Esc>`<i'<Esc>
" use J K to move around selected block
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
" Remove unwanted spaces on selection
vnoremap <S-F12> :TrimSpaces<CR>

" \ **************************************************************************************** \
" \ Plugins 
" \ **************************************************************************************** \
" FZF
imap <c-x><c-o> <plug>(fzf-complete-line)
map <leader>B :Buffers<cr>
map <leader>f :Files<cr>
map <leader>g :GFiles<cr>
map <leader>t :Tags<cr>
