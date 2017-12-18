
set fileencoding=utf-8


" \ ******** \
" \ Mappings \
" \ ******** \

" general maps for inserting common declarations
map <silent> <leader>p o\paragraph{}<esc>
map <silent> <leader>sp o\subparagraph{}<esc>
map <silent> <leader>s o\section{}<esc>
map <silent> <leader>ss o\subsection{}<esc>
map <silent> <leader>sss o\subsubsection{}<esc>
map <silent> <leader>n o\newpage<esc>

" Declarations for special chars: '~', '^' and '\'
map <silent> <leader>~ o\textasciitilde<esc>
map <silent> <leader>^ o\textasciicircum<esc>
map <silent> <leader>\ o\textbackslash<esc>



" \ ******** \
" \ Commands \
" \ ******** \

command! Dirtree  :r ~/.vim/resources/latex/dirtree.tex
