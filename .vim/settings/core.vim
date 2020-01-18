"
" g:editor_mode can take three string values:
"   - rich: full configuration (taking into account plugins)
"   - idea: some intelli j idea overrides and don't load plugins
"   - simple: smallest configuration for fast loading
"



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
" if &term =~ '^screen'
" 	execute "set <xUp>=\e[1;*A"
" 	execute "set <xDown>=\e[1;*B"
" 	execute "set <xRight>=\e[1;*C"
"    execute "set <xLeft>=\e[1;*D"
" endif


" ----- Input --------------------------------------------------------------------------------
set mouse=                      " Mouse can be enabled for different modes.
set clipboard+=unnamedplus      " Use system clipboard (nvim)
xnoremap p "_dP                 " Don't overwrite register on paste

" ----- Editor -------------------------------------------------------------------------------
syntax enable                   " syntax highlight

set tabstop=2                   " show existing tab with $value spaces width
set softtabstop=2               " number of spaces tab counts for while editing
set shiftwidth=2                " when indenting with '>', use $value spaces width
set expandtab                   " on pressing tab, insert spaces
set autoindent                  " copy indent from current line

set number                      " show line numbers
set relativenumber              " use relative line numbers

set textwidth=0                 " line's 'max char count
set foldmethod=syntax           " indent= lines with equal indent create a fold
set foldlevel=95                " folds with a higher level will be closed
set colorcolumn=95              " color column
set backspace=indent,eol,start  " backspace behavior in normal mode

set splitbelow                  " split below
set splitright                  " split to the right

set modeline                    " modeline
set laststatus=2                " if set to `2`, statusline is always displayed

highlight ColorColumn
            \ ctermbg=7
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
" set notimeout                   " disable bind combo timeout
set timeout

" netrw sane defaults
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 2
" let g:netrw_altv = 1
let g:netrw_winsize = 25
let g:netrw_list_hide= '.*\.swp$,.*\.d.ts$,.*\.pyc$,.*\.js.map$'

" close preview window on leaving the insert mode
" autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif


" ----- Languages ----------------------------------------------------------------------------
let g:pymode_python     = 'python3' " python 3 as default
" let g:python_host_prog  = '/usr/bin/env python2'
" let g:python3_host_prog = '/usr/bin/env python3'


" ----- Performance --------------------------------------------------------------------------
set lazyredraw                  " avoid redrawing when executing macros and other commands
set synmaxcol=200               " Don't highlight anything longer than 200 chars
let did_install_default_menus=1 " Don't load gvim menu stuff
" let loaded_matchparen=1         " Don't hightlight matching parents
" kitty background's bug
let &t_ut=''


" \ **************************************************************************************** \
" \ Appearance and syntax
" \ **************************************************************************************** \

set t_Co=256

" these are overriden by solarized theme
" Diff colours
hi DiffText ctermfg=darkred ctermbg=lightgrey
" Other colours
hi Search ctermfg=black ctermbg=lightmagenta

" Include jsonc in json syntax highlight
autocmd FileType json syntax match Comment +\/\/.\+$+

" \ **************************************************************************************** \
" \ Settings source files
" \ **************************************************************************************** \

function! SourceDirectory(file)
  for s:fpath in split(globpath(a:file, '*.vim'), '\n')
    exe 'source' s:fpath
  endfor
endfunction


call SourceDirectory("~/.vim/settings/functions")
source ~/.vim/settings/mappings.vim
source ~/.vim/settings/statusline.vim

if (editor_mode == "vs") 
    source ~/.vim/settings/visualstudio.vim
elseif (editor_mode == "rich")

    call SourceDirectory("~/.vim/settings/rich")

    " --- Sources ----------------------------------------------------------------------------
    autocmd BufNewFile,BufRead *.py     source ~/.vim/sources/py.vim
    autocmd BufNewFile,BufRead *.md     source ~/.vim/sources/md.vim
    autocmd BufNewFile,BufRead *.rs     source ~/.vim/sources/rust.vim
    autocmd BufNewFile,BufRead *.cs     source ~/.vim/sources/cs.vim
    autocmd BufNewFile,BufRead *.toml   source ~/.vim/sources/rust.vim
    " autocmd BufNewFile,BufRead *.cpp    source ~/.vim/sources/cpp.vim
    " autocmd BufNewFile,BufRead *.c      source ~/.vim/sources/c.vim
    " autocmd BufNewFile,BufRead *.tex    source ~/.vim/sources/tex.vim


    " --- Templates --------------------------------------------------------------------------
    " au BufNewFile *.py r ~/.vim/templates/temp.py
    au BufNewFile *.sh r ~/.vim/templates/temp.sh
    au BufNewFile *.tex r ~/.vim/templates/temp.tex

elseif (editor_mode == "idea")
    source ~/.vim/settings/idea.vim

endif
