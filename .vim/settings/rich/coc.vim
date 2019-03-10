
" ----- servers ------------------------------------------------------------------------------
" let g:LanguageClient_serverCommands = {
"     \ 'python':     ['tcp://127.0.0.1:9009'],
"     \ 'javascript': ['tcp://127.0.0.1:2089'],
"     \ 'typescript': ['tcp://127.0.0.1:2089'],
"     \ 'java':       ['/usr/local/bin/jdtls'],
"     \ 'rust':       ['rustup', 'run', 'nightly', 'rls']
"     \ }


" ----- binds---------------------------------------------------------------------------------


inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

nmap <silent><leader>cgd <Plug>(coc-definition)
nmap <silent><leader>cgt <Plug>(coc-type-definition)
nmap <silent><leader>cgi <Plug>(coc-implementation)
nmap <silent><leader>cr <Plug>(coc-references)

nnoremap <silent><space>cs  :<C-u>CocList -I symbols<cr>
nnoremap <silent><leader>ch :call <SID>show_documentation()<CR>

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
