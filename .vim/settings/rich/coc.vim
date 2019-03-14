
" ----- binds---------------------------------------------------------------------------------

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

nmap <silent><leader>cgd <Plug>(coc-definition)
nmap <silent><leader>cgt <Plug>(coc-type-definition)
nmap <silent><leader>cgi <Plug>(coc-implementation)
nmap <silent><leader>cr <Plug>(coc-references)

nnoremap <silent><space>cs  :<C-u>CocList -I symbols<cr>
nnoremap <silent><leader>ch :call <SID>show_documentation()<CR>
nmap <leader>cR <Plug>(coc-rename)

nnoremap <silent><space>kd  :<C-u>CocList diagnostics<cr>
nnoremap <silent><space>ke  :<C-u>CocList extensions<cr>
nnoremap <silent><space>kc  :<C-u>CocList commands<cr>
nnoremap <silent><space>ko  :<C-u>CocList outline<cr>

" ----- functions ----------------------------------------------------------------------------
function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
