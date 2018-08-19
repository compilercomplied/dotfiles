"
" Richer options for plugins and complex configuration is stored here, aimed
" at offloading some heavy work when using vim/nvim just as a quick editor
"


" \ **************************************************************************************** \
" \ Plugin specific config
" \ **************************************************************************************** \

" ----- LSP ----------------------------------------------------------------------------------
if exists('LanguageClientStart')
    let g:LanguageClient_serverCommands = {
        \ 'python': ['tcp://127.0.0.1:9009']
        \ }
endif

" ----- deoplete -----------------------------------------------------------------------------
if exists('deoplete#enable_at_startup')
    let g:deoplete#enable_at_startup=1
endif


" \ **************************************************************************************** \
" \ Plugin specific binds
" \ **************************************************************************************** \

" --- Tagbar ---------------------------------------------------------------------------------
if exists(':TagbarToggle')
    noremap <F3> :TagbarToggle<CR>
endif

" ----- FZF ----------------------------------------------------------------------------------
if exists(':FZF')
    imap <c-x><c-o> <plug>(fzf-complete-line)
    noremap <leader>fb :Buffers<cr>
    noremap <leader>ff :Files<cr>
    noremap <leader>ft :BTags<cr>
endif

" ----- LSP ----------------------------------------------------------------------------------
if exists(':LanguageClientStart')
    noremap <leader>cf  :call LanguageClient#textDocument_formatting()<cr>
    noremap <leader>cd  :call LanguageClient#textDocument_definition()<cr>
    noremap <leader>ct  :call LanguageClient#textDocument_typeDefinition()<cr>
    noremap <leader>ch  :call LanguageClient#textDocument_hover()<cr>
    noremap <leader>ci  :call LanguageClient#textDocument_implementation()<cr>
    noremap <leader>cr  :call LanguageClient#textDocument_references()<cr>
    " noremap <leader>ft  :call LanguageClient#textDocument_documentSymbol()<cr>
endif



" \ **************************************************************************************** \
" \ Plugin specific functions
" \ **************************************************************************************** \

" ----- FuzzyTags ----------------------------------------------------------------------------
" Fuzzy search tags within current buffer. FZF needed.
function! s:align_lists(lists)
  let maxes = {}
  for list in a:lists
    let i = 0
    while i < len(list)
      let maxes[i] = max([get(maxes, i, 0), len(list[i])])
      let i += 1
    endwhile
  endfor
  for list in a:lists
    call map(list, "printf('%-'.maxes[v:key].'s', v:val)")
  endfor
  return a:lists
endfunction

function! s:btags_source()
  let lines = map(split(system(printf(
    \ 'ctags -f - --sort=no --excmd=pattern --language-force=%s %s',
    \ &filetype, expand('%:S'))), "\n"), 'split(v:val, "\t")')
  if v:shell_error
    throw 'failed to extract tags'
  endif
  return map(s:align_lists(lines), 'join(v:val, "\t")')
endfunction

function! s:btags_sink(line)
  execute split(a:line, "\t")[2]
endfunction

function! s:btags()
  try
    call fzf#run({'source':  s:btags_source(),
                 \'down':    '40%',
                 \'options': '+m -d "\t" --with-nth 1,4..',
                 \'sink':    function('s:btags_sink')})
  catch
    echohl WarningMsg
    echom v:exception
    echohl None
  endtry
endfunction

command! BTags call s:btags()



" \ **************************************************************************************** \
" \ Sources
" \ **************************************************************************************** \

autocmd BufNewFile,BufRead *.py     source ~/.vim/sources/py.vim
autocmd BufNewFile,BufRead *.md     source ~/.vim/sources/md.vim
" autocmd BufNewFile,BufRead *.cpp    source ~/.vim/sources/cpp.vim
" autocmd BufNewFile,BufRead *.c      source ~/.vim/sources/c.vim
" autocmd BufNewFile,BufRead *.tex    source ~/.vim/sources/tex.vim


" \ **************************************************************************************** \
" \ Templates
" \ **************************************************************************************** \

"au BufNewFile *.py r ~/.vim/templates/temp.py
au BufNewFile *.sh r ~/.vim/templates/temp.sh
au BufNewFile *.tex r ~/.vim/templates/temp.tex


