" flags unnecessary whitespace
"highlight BadWhitespace ctermbg=red guibg=darkred
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" highlight and syntax
let python_highlight_all=1

" \ ******** \
" \ Mappings \
" \ ******** \

map <silent> <leader>b opdb.set_trace()<esc>
map <silent> <leader>B :%s/import\ pdb//g<esc>\|:%s/pdb.set_trace()//g<esc>
