" \ ************** \
" \ Plugin Manager \
" \ ************** \

call plug#begin('~/.config/nvim/plugged')
" Make sure you use single quotes

" ### General purpose ###
" aligning plugin
Plug 'junegunn/vim-easy-align'
" autocompletion
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" status bar
Plug 'vim-airline/vim-airline'
" vim-notes
Plug 'xolox/vim-notes'
Plug 'xolox/vim-misc'

" ### Python ###
" folding
Plug 'tmhedberg/SimpylFold'
" PEP8 indentation
"Plug 'vim-scripts/indentpython.vim'
" virtualenvs
Plug 'jmcantrell/vim-virtualenv'

" ### Themes ###
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'altercation/vim-colors-solarized'

" Initialize plugin system
call plug#end()



" \ ********************* \
" \ General functionality \
" \ ********************* \

" Vim needs a POSIX-Compliant shell. Fish is not.
if $SHELL =~ 'bin/fish'
    set shell=/usr/bin/bash
endif


filetype plugin indent on
set encoding=utf-8              " keep the encoding as high as possible in $MYVIMRC
set modeline                    " modeline
set tabstop=4                   " show existing tab with 4 spaces width
set softtabstop=4               " number of spaces tab counts for while editing 
set shiftwidth=4                " when indenting with '>', use 4 spaces width
set expandtab                   " on pressing tab, insert 4 spaces
set autoindent                  " copy indent from current line
syntax enable                   " syntax highlight
set number                      " show line numbers
let g:pymode_python = 'python3' " python 3 as default
set backspace=indent,eol,start  " backspace behavior in normal mode
"set hlsearch                    " highlight search matches by default
set splitbelow                  " split below
set splitright                  " split to the right
set mouse=a                     " allow mouse
set fileformat=unix             " gives <EOL> of current buffer 
"set textwidth=85                " line's 'max char count
set foldmethod=indent           " indent= lines with equal indent create a fold
set foldlevel=99                " folds with a higher level will be closed
set colorcolumn=100             " color column

highlight ColorColumn
            \ ctermbg=0
            \ guibg=lightgrey   " adds color column at the end of


" Append modeline after last line in buffer.
" Use substitute() instead of printf() to handle '%%s' modeline in LaTeX files.
function! AppendModeline()
    let l:modeline = printf(" vim: set ts=%d sw=%d tw=%d %set :",
    \ &tabstop, &shiftwidth, &textwidth, &expandtab ? '' : 'no')
    let l:modeline = substitute(&commentstring, "%s", l:modeline, "")
call append(line("$"), l:modeline)
endfunction
nnoremap <silent> <Leader>ml :call AppendModeline()<CR>



" \ ******** \
" \ Mappings \
" \ ******** \

" GENERAL BINDS

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


" ALL MODES

noremap :W :w

" maps F2 to netrw in vertical split
function MyExplore()
    Vex
    nmap <buffer> <leader>q :q<cr>
endfunction
nmap <F2> :call MyExplore()<cr> 


" INSERT MODE

" Bracket and parenthesis handling
" automatically adds closing brackets
"inoremap ( ()<Esc>i
"inoremap [ []<Esc>i
"inoremap { {}<Esc>i
"inoremap " ""<Esc>i
"inoremap ' ''<Esc>i
" jk combination to enter normal mode
inoremap jk <esc>
inoremap kj <esc>


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

" shift+tab for inverse tab
nnoremap <S-Tab> <<
inoremap <S-Tab> <C-d>



" \ ****************** \
" \ Appearance-related \
" \ ****************** \

set t_Co=256
set laststatus=2
colorscheme solarized 
set background=light
let g:airline_powerline_fonts = 1



" \ ******* \
" \ Sources \
" \ ******* \

autocmd BufNewFile,BufRead *.py     source ~/.config/nvim/sources/py.vim
autocmd BufNewFile,BufRead *.cpp    source ~/.config/nvim/sources/cpp.vim
autocmd BufNewFile,BufRead *.c      source ~/.config/nvim/sources/c.vim
autocmd BufNewFile,BufRead *.tex    source ~/.config/nvim/sources/tex.vim



" \ ********* \
" \ Templates \
" \ ********* \

au BufNewFile *.py r ~/.config/nvim/templates/temp.py
au BufNewFile *.sh r ~/.config/nvim/templates/temp.sh
au BufNewFile *.tex r ~/.config/nvim/templates/temp.tex
