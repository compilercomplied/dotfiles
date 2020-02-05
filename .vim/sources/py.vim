

" \ **************************************************************************************** \
" \ General
" \ **************************************************************************************** \
set wildignore=*.pyc                " Ignore pyc files when expanding wildcards
let g:netrw_list_hide= '.*\.pyc$'   " Don't show .pyc files in lists
set listchars=eol:¬,tab:▷\ ,        " map eol and tab to special chars

" Override defaults
set autoindent nosmartindent        " auto/smart indent
set smarttab                        " :help 'smarttab'
set expandtab                       " expand tabs to spaces
set shiftwidth=2                    " :help 'shiftwidth'
set softtabstop=2                   " :help 'softtabstop'


" \ **************************************************************************************** \
" \ Syntax
" \ **************************************************************************************** \

" highlight and syntax
let python_highlight_all=1

" \ **************************************************************************************** \
" \ Mappings
" \ **************************************************************************************** \

map <silent> <leader>q opdb.set_trace()<esc>
map <silent> <leader>Q :%s/import\ pdb//g<esc>\|:%s/pdb.set_trace()//g<esc>

