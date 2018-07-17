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
" move no next/previous error using quickfix builtin
nmap <silent> <C-k> <Plug>(ale_previous_wrap)

" \ **************************************************************************************** \
" \ Accesibility 
" \ **************************************************************************************** \
" Fat finger's save
noremap :W :w
" don't skip lines that overflow when moving using JK
" nnoremap j gj
" nnoremap k gk

" These create newlines like o and O but stay in normal mode
nmap zj o<Esc>
nmap zk O<Esc>

" Quickly close editor
noremap <C-w>A :qa<cr>

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

" ----- FZF ----------------------------------------------------------------------------------
imap <c-x><c-o> <plug>(fzf-complete-line)
noremap <leader>sb :Buffers<cr>
noremap <leader>sf :Files<cr>
noremap <leader>st :BTags<cr>

" ----- LSP ----------------------------------------------------------------------------------
noremap <leader>cf  :call LanguageClient#textDocument_formatting()<cr>
noremap <leader>cd  :call LanguageClient#textDocument_definition()<cr>
noremap <leader>ch  :call LanguageClient#textDocument_hover()<cr>
noremap <leader>ci  :call LanguageClient#textDocument_implementation()<cr>
noremap <leader>cr  :call LanguageClient#textDocument_references()<cr>

