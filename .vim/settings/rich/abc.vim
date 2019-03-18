
" ----- deoplete -----------------------------------------------------------------------------
" set completeopt+=noinsert
" set completeopt+=noselect
" let g:deoplete#enable_at_startup=1
" let g:deoplete#enable_smart_case=1

" " let g:deoplete#is_debug_enabled="True"
" " call deoplete#enable_logging("DEBUG", ".deoplete.log")
" call deoplete#custom#source(
"             \ 'LanguageClient',
"             \ 'min_pattern_length',
"             \ 2
" \ )

" call deoplete#custom#option({
"     \ 'auto_complete_delay': 200,
"     \ 'smart_case': v:true,
" \ })

" ----- echodoc ------------------------------------------------------------------------------
let g:echodoc#enable_at_startup = 1
let g:echodoc#type = 'signature'

" ----- rainbow ------------------------------------------------------------------------------
let g:rainbow_active = 1
let g:rainbow_conf = {
            \ 'ctermfgs': [
                \ 'blue',
                \ 'green',
                \ 'yellow',
                \ 'cyan',
                \ 'magenta',
            \ ],
\}

" ----- pulse --------------------------------------------------------------------------------
let g:vim_search_pulse_duration = 100

" ----- easytags -----------------------------------------------------------------------------
let g:easytags_async = 1

" ----- easytags -----------------------------------------------------------------------------
let g:vue_disable_pre_processors=1  " https://github.com/posva/vim-vue/issues/95

" ----- anyfold ------------------------------------------------------------------------------
autocmd Filetype * AnyFoldActivate
set foldlevel=99

" ----- Solarized ----------------------------------------------------------------------------
set background=light
colorscheme solarized
let g:solarized_termcolors=16
let g:solarized_termtrans=1

" --- Tagbar ---------------------------------------------------------------------------------
noremap <leader>cb :TagbarToggle<CR>

" ----- FZF ----------------------------------------------------------------------------------
noremap <leader>bb :Buffers<cr>
noremap <leader>ff :Files<cr>
" noremap <leader>ft :BTags<cr>

" ----- vim-markdown -------------------------------------------------------------------------
let g:markdown_fenced_languages = [
      \ 'css',
      \ 'rust',
      \ 'python',
      \ 'javascript',
      \ 'js=javascript',
      \ 'typescript'
      \ ]
