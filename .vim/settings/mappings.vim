" \ ************************************************************************************************** \
" \ General Binds \
" \ ************************************************************************************************** \
let mapleader = ","
" tmux will send xterm-style keys when its xterm-keys option is on
if &term =~ '^screen'
	execute "set <xUp>=\e[1;*A"
	execute "set <xDown>=\e[1;*B"
	execute "set <xRight>=\e[1;*C"
   execute "set <xLeft>=\e[1;*D"
endif
set t_ku=OA
set t_kd=OB
set t_kr=OC
set t_kl=OD
" source $MYVIMRC reloads the saved $MYVIMRC
:nmap <Leader>s :source $MYVIMRC
" opens $MYVIMRC for editing
:nmap <Leader>v :tabedit $MYVIMRC
" Easy tab/untab in IM and NM
nmap <C-Tab> a<C-t><Esc>
nmap <C-S-Tab> a<C-d><Esc>
imap <C-Tab> <C-t>
imap <C-S-Tab> <C-d>
" overload undo
inoremap <C-U> <C-G>u<C-U>

" \ ************************************************************************************************** \
" \ Accesibility \
" \ ************************************************************************************************** \
" Fat finger's save
noremap :W :w
" don't skip lines that overflow when moving using JK
noremap j gj
noremap k gk

" maps F2 to netrw
nmap <F2> :call ToggleVExplorer()<cr>
" maps F3 to tagbar
nmap <F3> :TagbarToggle<CR>
" Use LH to move panes between tabs
nmap <leader>L :call MoveToNextTab()<CR>
nmap <leader>H :call MoveToPrevTab()<CR>
" Split line, the move to beginning of new line
map <leader>n i<Enter><Esc>
" Show unwanted spaces
nnoremap <F12> :ShowSpaces 1<CR>
" Remove unwanted spaces
nnoremap <S-F12> m`:TrimSpaces<CR>``

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

" \ ************************************************************************************************** \
" \ Plugins \
" \ ************************************************************************************************** \
" FZF
imap <c-x><c-o> <plug>(fzf-complete-line)
map <leader>B :Buffers<cr>
map <leader>f :Files<cr>
map <leader>g :GFiles<cr>
map <leader>t :Tags<cr>

