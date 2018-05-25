" \ ************************************************************************************************** \
" \ General \
" \ ************************************************************************************************** \
set wildignore=*.pyc                " Ignore pyc files when expanding wildcards
let g:netrw_list_hide= '.*\.pyc$'   " Don't show .pyc files in lists
set listchars=eol:¬,tab:▷\ ,        " map eol and tab to special chars

" Override defaults
set autoindent nosmartindent        " auto/smart indent
set smarttab
set expandtab                       " expand tabs to spaces
set shiftwidth=4
set softtabstop=4



" \ ************************************************************************************************** \
" \ Syntax \
" \ ************************************************************************************************** \

" flags unnecessary whitespace
"highlight BadWhitespace ctermbg=red guibg=darkred
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" highlight and syntax
let python_highlight_all=1

" \ ************************************************************************************************** \
" \ Mappings \
" \ ************************************************************************************************** \

map <silent> <leader>b opdb.set_trace()<esc>
map <silent> <leader>B :%s/import\ pdb//g<esc>\|:%s/pdb.set_trace()//g<esc>
