" flags unnecessary whitespace
"highlight BadWhitespace ctermbg=red guibg=darkred
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" YCM plugin: The former line ensures that the autocomplete window goes
" away when you’re done with it, and the latter defines a shortcut for
" goto definition.
let g:ycm_autoclose_preview_window_after_completion=1
map space-g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_server_python_interpreter='/usr/bin/python3'
let g:ycm_path_to_python_interpreter="/usr/bin/python3"

" highlight and syntax
let python_highlight_all=1

if !exists("*LoadVirtualEnv")
    function LoadVirtualEnv(path)
        let activate_this = a:path . '/bin/activate_this.py'
        if getftype(a:path) == "dir" && filereadable(activate_this)
            python << EOF
import vim
activate_this = vim.eval('l:activate_this')
execfile(activate_this, dict(__file__=activate_this))
EOF
        endif
    endfunction
endif
    
" Load up a 'stable' virtualenv if one exists in ~/.virtualenv
let defaultvirtualenv = "/mnt/data/code/.virtualenvs"

" Only attempt to load this virtualenv if the defaultvirtualenv
" actually exists, and we aren't running with a virtualenv active.
if has("python")
    if empty($VIRTUAL_ENV) && getftype(defaultvirtualenv) == "dir"
        call LoadVirtualEnv(defaultvirtualenv)
    endif
endif


" \ ******** \
" \ Mappings \
" \ ******** \

map <silent> <leader>b opdb.set_trace()<esc>
map <silent> <leader>B :%s/import\ pdb//g<esc>\|:%s/pdb.set_trace()//g<esc>
