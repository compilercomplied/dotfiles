
" \ **************************************************************************************** \
" \ General functionality
" \ **************************************************************************************** \

" ----- Environment --------------------------------------------------------------------------
set encoding=utf-8              " keep the encoding as high as possible in $MYVIMRC
filetype plugin indent on       " :help :filetype-overview
set tags=~/code/.tags           " ctags dir
set fileformat=unix             " gives <EOL> of current buffer

" Vim needs a POSIX-Compliant shell. Fish is not.
if $SHELL =~ 'bin/fish' || $SHELL =~ 'bin/zsh'
    set shell=/usr/bin/bash
endif

" tmux will send xterm-style keys when its xterm-keys option is on
if &term =~ '^screen'
	execute "set <xUp>=\e[1;*A"
	execute "set <xDown>=\e[1;*B"
	execute "set <xRight>=\e[1;*C"
   execute "set <xLeft>=\e[1;*D"
endif


" ----- Input --------------------------------------------------------------------------------
set mouse=                      " Mouse can be enabled for different modes.


" ----- Editor -------------------------------------------------------------------------------
syntax enable                   " syntax highlight

set tabstop=4                   " show existing tab with 4 spaces width
set softtabstop=4               " number of spaces tab counts for while editing
set shiftwidth=4                " when indenting with '>', use 4 spaces width
set expandtab                   " on pressing tab, insert 4 spaces
set autoindent                  " copy indent from current line

set number                      " show line numbers
set relativenumber              " use relative line numbers

set textwidth=0                 " line's 'max char count
set foldmethod=indent           " indent= lines with equal indent create a fold
set foldlevel=95                " folds with a higher level will be closed
set colorcolumn=95              " color column
set backspace=indent,eol,start  " backspace behavior in normal mode

set splitbelow                  " split below
set splitright                  " split to the right

set modeline                    " modeline
set laststatus=2                " if set to `2`, statusline is always displayed

highlight ColorColumn
            \ ctermbg=0
            \ guibg=lightgrey   " adds color column of line, width set with `set colorcolumn`


" ----- Accesibility -------------------------------------------------------------------------
set ruler                       " show cursor position
set wildmenu                    " tab-completion for command-line
set scrolloff=1                 " minimal number of screen lines to keep above & below cursor
set sidescrolloff=5             " minimal number of screen columns to keep to left and right
set display+=lastline           " :help 'display'
set formatoptions+=j            " delete comment character when joining commented lines
set autoread                    " reload files changed externally
set autowrite                   " :w automatically when a bunch of stuff happens


set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+


" ----- Languages ----------------------------------------------------------------------------
let g:pymode_python = 'python3' " python 3 as default


" ----- Performance --------------------------------------------------------------------------
set lazyredraw                  " :help 'lazy
set synmaxcol=200               " Don't highlight anything longer than 200 chars
let did_install_default_menus=1 " Don't load gvim menu stuff
"let loaded_matchparen=1         " Don't hightlight matching parents


" \ **************************************************************************************** \
" \ Appearance
" \ **************************************************************************************** \

" set t_Co=256
" colorscheme solarized
" set background=light

" Mode aware cursors
" set gcr+=o:hor50-Cursor
" set gcr+=n:Cursor
" set gcr+=i-ci-sm:InsertCursor
" set gcr+=r-cr:ReplaceCursor-hor20
" set gcr+=c:CommandCursor
" set gcr+=v-ve:VisualCursor

" Solarized options
" let g:solarized_termcolors=16
" let g:solarized_termtrans=1


" \ **************************************************************************************** \
" \ Settings source files
" \ **************************************************************************************** \
source ~/.vim/settings/statusline.vim
source ~/.vim/settings/functions.vim
source ~/.vim/settings/mappings.vim


" \ **************************************************************************************** \
" \ Sources
" \ **************************************************************************************** \

autocmd BufNewFile,BufRead *.py     source ~/.vim/sources/py.vim
autocmd BufNewFile,BufRead *.cpp    source ~/.vim/sources/cpp.vim
autocmd BufNewFile,BufRead *.c      source ~/.vim/sources/c.vim
autocmd BufNewFile,BufRead *.tex    source ~/.vim/sources/tex.vim
autocmd BufNewFile,BufRead *.md     source ~/.vim/sources/md.vim


" \ **************************************************************************************** \
" \ Templates
" \ **************************************************************************************** \

"au BufNewFile *.py r ~/.vim/templates/temp.py
"au BufNewFile *.sh r ~/.vim/templates/temp.sh
au BufNewFile *.tex r ~/.vim/templates/temp.tex
