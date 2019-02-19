
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
set timeoutlen=300
let g:which_key_map = {}

let g:which_key_map.h = { 
            \ 'name' : '+highlight' ,
            \ 'h' : 'toggle',
\ }
let g:which_key_map.t = { 
            \ 'name' : '+tabs' ,
            \ 'm' : {
                \ 'name': '+goto',
                \ 'h' : 'next-tab',
                \ 'l' : 'prev-tab',
            \ },
            \ 'h' : 'next-tab',
            \ 'l' : 'prev-tab',
\ }
let g:which_key_map.l = { 
            \ 'name' : '+lines',
            \ 'l' : 'append-semicolon',
            \ 'j' : 'split-line',
            \ 'h' : 'append-comma',
\ }
let g:which_key_map.c = {
            \ 'name' : '+lsp',
            \ 'r' : 'references',
            \ 'R' : 'rename',
            \ 'c' : 'context-menu',
            \ 'h' : 'hover',
            \ 'F' : 'formatting',
            \ 'f' : 'range-formatting',
            \ 'l' : 'highlight',
            \ 'L' : 'unmark-highlight',
            \ 's' : 'document-symbol',
            \ 'S' : 'workspace-symbol',
            \ 'g' : {
                \ 'name': '+goto',
                \ 'd' : 'definition',
                \ 't' : 'type-definition',
                \ 'i' : 'implementation',
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
