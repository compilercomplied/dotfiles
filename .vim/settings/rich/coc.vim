
" ----- general ------------------------------------------------------------------------------
autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')

" ----- binds---------------------------------------------------------------------------------
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <silent><expr> <c-space> coc#refresh()

nmap <silent><leader>cgd <Plug>(coc-definition)
nmap <silent><leader>cgt <Plug>(coc-type-definition)
nmap <silent><leader>cgi <Plug>(coc-implementation)
nmap <silent><leader>cgr <Plug>(coc-references)

command! -nargs=0 Format :call CocAction('format')
nmap <silent><leader>cf  <Plug>(coc-format-selected)
nmap <silent><leader>cF  :Format<cr>

nnoremap <silent><space>cS  :<C-u>CocList -I symbols<cr> " Workspace symbols
nnoremap <silent> <space>cs  :<C-u>CocList outline<cr> " Document symbols
nnoremap <silent><leader>ch :call <SID>show_documentation()<CR>
nmap <leader>cR <Plug>(coc-rename)
nmap <leader>ca <Plug>(coc-codeaction)
nmap <leader>co <Plug>(coc-openlink)

nnoremap <silent><space>kd  :<C-u>CocList diagnostics<cr>
nnoremap <silent><space>ke  :<C-u>CocList extensions<cr>
nnoremap <silent><space>kc  :<C-u>CocList commands<cr>
nnoremap <silent><space>ko  :<C-u>CocList outline<cr>
nnoremap <silent><space>km  :<C-u>CocList marketplace<cr>

" ----- functions ----------------------------------------------------------------------------
function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
