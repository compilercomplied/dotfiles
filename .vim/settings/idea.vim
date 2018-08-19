"
" Intelli J Idea vim plugin options, with overrides and special commands,
" binds and what not.
"


" \ **************************************************************************************** \
" \ Idea actions
" \ **************************************************************************************** \
noremap <leader>d           :action GotoDeclaration<cr>
noremap gf                  :action GotoFile<cr>
noremap <leader>c           :action GotoClass<cr>
noremap <leader>d           :action ShowErrorDescription<cr>

noremap <leader>bb          :action ToggleLineBreakpoint<CR>

noremap <C-w><Space>        :action MoveEditorToOppositeTabGroup<cr>
noremap gcc                 :action CommentByLineComment<cr>

noremap <leader>S           :action Stop<cr>
noremap <leader>rr          :action RunClass<cr>
noremap <leader>rR          :action RerunFailedTests<cr>
noremap <leader>rd          :action DebugClass<cr>
noremap <leader>rD          :action Debug<cr>
noremap <leader>rm          :action RunMenu<cr>



" \ **************************************************************************************** \
" \ Ideavim options
" \ **************************************************************************************** \

" ----- Plugins ------------------------------------------------------------------------------
set surround



" \ **************************************************************************************** \
" \ Ideavim overrides
" \ **************************************************************************************** \

" by default don't split in two but move from one split to another (or create
" a new one without repeating the split.
noremap <C-w>v  :vsplit<cr><C-w>W<C-w><space>
noremap <C-w>s  :split<cr><C-w>W<C-w><space>
