"
" Richer options for plugins and complex configuration is stored here, aimed
" at offloading some heavy work when using vim/nvim just as a quick editor
"


" \ **************************************************************************************** \
" \ Plugin specific config
" \ **************************************************************************************** \

" ----- LSP ----------------------------------------------------------------------------------
let g:LanguageClient_serverCommands = {
    \ 'python':     ['tcp://127.0.0.1:9009'],
    \ 'javascript': ['tcp://127.0.0.1:2089'],
    \ 'typescript': ['tcp://127.0.0.1:2089'],
    \ 'java':       ['/usr/local/bin/jdtls'],
    \ 'rust':       ['rustup', 'run', 'nightly', 'rls']
    \ }

" ----- deoplete -----------------------------------------------------------------------------
set completeopt+=noinsert
set completeopt+=noselect
let g:deoplete#enable_at_startup=1
let g:deoplete#enable_smart_case=1
" let g:deoplete#is_debug_enabled="True"

" ----- echodoc ------------------------------------------------------------------------------
let g:echodoc#enable_at_startup = 1
let g:echodoc#type = 'signature'

" ----- rainbow ------------------------------------------------------------------------------
let g:rainbow_active = 1

" ----- pulse --------------------------------------------------------------------------------
let g:vim_search_pulse_duration = 100

" ----- tagbar -------------------------------------------------------------------------------
let g:tagbar_type_typescript = {
            \ 'ctagstype': 'typescript',
            \ 'kinds': [
                \ 'c:classes',
                \ 'n:modules',
                \ 'f:functions',
                \ 'v:variables',
                \ 'v:varlambdas',
                \ 'm:members',
                \ 'i:interfaces',
                \ 'e:enums',
            \ ]
\ }
let g:tagbar_type_javascript = {
            \ 'ctagstype': 'javascript',
            \ 'kinds': [
                \ 'A:arrays',
                \ 'P:properties',
                \ 'T:tags',
                \ 'O:objects',
                \ 'G:generator functions',
                \ 'F:functions',
                \ 'C:constructors/classes',
                \ 'M:methods',
                \ 'V:variables',
                \ 'I:imports',
                \ 'E:exports',
                \ 'S:styled components'
            \ ]
\ }
let g:tagbar_show_linenumbers = 2   " Relative numbers
highlight TagbarHighlight ctermfg=Blue

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

" ----- whichkey -----------------------------------------------------------------------------
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
set timeoutlen=500
let g:which_key_map = {}

let g:which_key_map.t = { 
            \ 'name' : '+tabs' ,
            \ 'h' : ['MoveToPrevTab()', 'next-tab'],
            \ 'l' : ['MoveToNextTab()', 'prev-tab'],
\ }
let g:which_key_map.l = { 
            \ 'name' : '+lines',
            \ 'l' : ['A;<Esc>', 'append-semicolon'],
            \ 'j' : ['i<Enter><Esc>', 'split-line'],
            \ 'h' : ['A,<Esc>', 'append-comma'],
\ }
let g:which_key_map.c = {
            \ 'name' : '+lsp',
            \ 'r' : ['LanguageClient#textDocument_references()',      'references'],
            \ 'R' : ['LanguageClient#textDocument_rename()',          'rename'],
            \ 'c' : ['LanguageClient_contextMenu',                    'context-menu'],
            \ 'h' : ['LanguageClient#textDocument_hover()',           'hover'],
            \ 'F' : ['LanguageClient#textDocument_formatting()',      'formatting'],
            \ 'f' : ['LanguageClient#textDocument_rangeFormatting',   'range-formatting'],
            \ 'l' : ['LanguageClient#textDocument_documentHighlight()','highlight'],
            \ 'L' : ['LanguageClient#clearDocumentHighlight()',       'unmark-highlight'],
            \ 's' : ['LanguageClient#textDocument_documentSymbol()',  'document-symbol'],
            \ 'S' : ['LanguageClient#workspace_symbol()',             'workspace-symbol'],
            \ 'g' : {
                \ 'name': '+goto',
                \ 'd' : ['LanguageClient#textDocument_definition()',    'definition'],
                \ 't' : ['LanguageClient#textDocument_typeDefinition()','type-definition'],
                \ 'i' : ['LanguageClient#textDocument_implementation()','implementation'],
            \ },
\ }

let g:which_key_map.b = {
            \ 'name' : '+buffer' ,
            \ '1' : ['b1'        , 'buffer 1']        ,
            \ '2' : ['b2'        , 'buffer 2']        ,
            \ 'd' : ['bd'        , 'delete-buffer']   ,
            \ 'f' : ['bfirst'    , 'first-buffer']    ,
            \ 'h' : ['Startify'  , 'home-buffer']     ,
            \ 'l' : ['blast'     , 'last-buffer']     ,
            \ 'n' : ['bnext'     , 'next-buffer']     ,
            \ 'p' : ['bprevious' , 'previous-buffer'] ,
            \ 'b' : ['Buffers'   , 'fzf-buffer']      ,
\ }

nnoremap <C-W>ñk :resize -5<cr>
nnoremap <C-W>ñj :resize +5<cr>
let g:which_key_map['w'] = {
            \ 'name' : '+windows' ,
            \ 'w' : ['<C-W>w'     , 'other-window']          ,
            \ 'W' : ['<C-W>W'     , 'other-window-reverse']  ,
            \ 's' : ['<C-W>s'     , 'split-window-below']    ,
            \ 'v' : ['<C-W>v'     , 'split-window-below']    ,
            \ 'h' : ['<C-W>h'     , 'window-left']           ,
            \ 'j' : ['<C-W>j'     , 'window-below']          ,
            \ 'l' : ['<C-W>l'     , 'window-right']          ,
            \ 'k' : ['<C-W>k'     , 'window-up']             ,
            \ '=' : ['<C-W>='     , 'balance-window']        ,
            \ 'q' : ['<C-W>q'     , 'close-window']           ,
            \ 'A' : ['<C-W>A'     , 'close-editor']           ,
            \ '?' : ['Windows'    , 'fzf-window']            ,
            \ 'x' : {
                \ 'name': '+expand',
                \ 'h' : ['<C-W>5<', 'left']    ,
                \ 'j' : ['<C-W>ñj'  , 'below']   ,
                \ 'k' : ['<C-W>ñk'  , 'up']      ,
                \ 'l' : ['<C-W>5>'    , 'right']   ,
            \ },
            \ 'm' : {
                \ 'name': '+move',
                \ 'h' : ['<C-W>H', 'left']    ,
                \ 'j' : ['<C-W>J', 'bottom']   ,
                \ 'k' : ['<C-W>K', 'top']      ,
                \ 'l' : ['<C-W>L', 'right']   ,
            \ },
\ }

let g:which_key_map.g = {
            \ 'name' : '+git/vsc' ,
            \ 'b' : ['Gblame'                 , 'blame']             ,
            \ 'c' : ['BCommits'               , 'commits-for-current-buffer'] ,
            \ 'C' : ['Gcommit'                , 'commit']            ,
            \ 'd' : ['Gdiff'                  , 'diff']              ,
            \ 'e' : ['Gedit'                  , 'edit']              ,
            \ 'l' : ['Glog'                   , 'log']               ,
            \ 'r' : ['Gread'                  , 'read']              ,
            \ 's' : ['Gstatus'                , 'status']            ,
            \ 'w' : ['Gwrite'                 , 'write']             ,
            \ 'p' : ['Git push'               , 'push']              
\ }

nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>
call which_key#register('<Space>', 'g:which_key_map')

" \ **************************************************************************************** \
" \ Plugin specific binds
" \ **************************************************************************************** \

" --- Tagbar ---------------------------------------------------------------------------------
noremap <F3> :TagbarToggle<CR>

" ----- FZF ----------------------------------------------------------------------------------
noremap <leader>fb :Buffers<cr>
noremap <leader>ff :Files<cr>
noremap <leader>ft :BTags<cr>

" ----- LSP ----------------------------------------------------------------------------------
" noremap <leader>cF  :call LanguageClient#textDocument_formatting()<cr>
" noremap <leader>cf  :call LanguageClient#textDocument_rangeFormatting()<cr>
" noremap <leader>cR  :call LanguageClient#textDocument_rename()<cr>

" noremap <leader>cd  :call LanguageClient#textDocument_definition()<cr>
" noremap <leader>ct  :call LanguageClient#textDocument_typeDefinition()<cr>
" noremap <leader>ci  :call LanguageClient#textDocument_implementation()<cr>
" noremap <leader>cr  :call LanguageClient#textDocument_references()<cr>

" noremap <leader>ch  :call LanguageClient#textDocument_hover()<cr>
" noremap <leader>cc  :call LanguageClient_contextMenu()<cr>

" noremap <leader>cl  :call LanguageClient#textDocument_documentHighlight()<cr>
" noremap <leader>cL  :call LanguageClient#clearDocumentHighlight()<cr>

" noremap <leader>cs  :call LanguageClient#textDocument_documentSymbol()<cr>
" noremap <leader>cS  :call LanguageClient#workspace_symbol()<cr>


" \ **************************************************************************************** \
" \ Plugin specific functions
" \ **************************************************************************************** \

" deoplete
" call deoplete#enable_logging("DEBUG", ".deoplete.log")
call deoplete#custom#source(
            \ 'LanguageClient',
            \ 'min_pattern_length',
            \ 2
\ )

call deoplete#custom#option({
    \ 'auto_complete_delay': 200,
    \ 'smart_case': v:true,
\ })

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


