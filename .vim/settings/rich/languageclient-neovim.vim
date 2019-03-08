
" ----- servers ------------------------------------------------------------------------------
" let g:LanguageClient_serverCommands = {
"     \ 'python':     ['tcp://127.0.0.1:9009'],
"     \ 'javascript': ['tcp://127.0.0.1:2089'],
"     \ 'typescript': ['tcp://127.0.0.1:2089'],
"     \ 'java':       ['/usr/local/bin/jdtls'],
"     \ 'rust':       ['rustup', 'run', 'nightly', 'rls']
"     \ }


" ----- binds---------------------------------------------------------------------------------
" noremap <leader>cF  :call LanguageClient#textDocument_formatting()<cr>
" noremap <leader>cf  :call LanguageClient#textDocument_rangeFormatting()<cr>
" noremap <leader>cR  :call LanguageClient#textDocument_rename()<cr>

" noremap <leader>cgd  :call LanguageClient#textDocument_definition()<cr>
" noremap <leader>cgt  :call LanguageClient#textDocument_typeDefinition()<cr>
" noremap <leader>cgi  :call LanguageClient#textDocument_implementation()<cr>
" noremap <leader>cr  :call LanguageClient#textDocument_references()<cr>

" noremap <leader>ch  :call LanguageClient#textDocument_hover()<cr>
" noremap <leader>cc  :call LanguageClient_contextMenu()<cr>

" noremap <leader>cl  :call LanguageClient#textDocument_documentHighlight()<cr>
" noremap <leader>cL  :call LanguageClient#clearDocumentHighlight()<cr>

" noremap <leader>cs  :call LanguageClient#textDocument_documentSymbol()<cr>
" noremap <leader>cS  :call LanguageClient#workspace_symbol()<cr>
