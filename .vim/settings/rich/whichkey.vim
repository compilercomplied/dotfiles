
" --- options --------------------------------------------------------------------------------
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
set timeoutlen=300
let g:which_key_map = {}

" --- aux mappings ---------------------------------------------------------------------------
nnoremap <C-W>ñk :resize -5<cr>
nnoremap <C-W>ñj :resize +5<cr>

" --- mappings ------------------------------------------------------------------------------
let g:which_key_map.d = {
      \ 'name': '+document',
      \ 'f' : {
          \ 'name': '+format',
          \ 's' : ['ShowSpaces', 'show trailing spaces'    ],
          \ 't' : ['TrimSpaces', 'remove trailing spaces'  ]
      \ }
\ }

let g:which_key_map.s = {
      \ 'name': '+supercollider',
      \ 'b' : ['<Plug>(scnvim-send-block)'        , 'send block or line'  ],
      \ 'v' : ['<Plug>(scnvim-send-selection)'    , 'send selection'      ],
      \ 'l' : ['<Plug>(scnvim-send-line)'         , 'send line'           ],
      \ 'S' : ['<Plug>(scnvim-hard-stop)'         , 'hard stop'           ],
      \ 'w' : ['<Plug>(scnvim-postwindow-toggle)' , 'toggle post window'  ],
      \ 'x' : ['SCNvimStop'                       , 'stop server'         ],
      \ 'n' : ['SCNvimStart'                      , 'start server'        ],
      \ 'r' : ['SCNvimRecompile'                  , 'recompile lib'       ]
\ }
let g:which_key_map.h = { 
      \ 'name' : '+highlight' ,
      \ 'h' : 'toggle',
\ }
let g:which_key_map.k = { 
      \ 'name' : '+coc' ,
      \ 'd' : 'diagnostics',
      \ 'e' : 'extensions',
      \ 'c' : 'commands',
      \ 'o' : 'outline',
      \ 'm' : 'marketplace',
\ }
let g:which_key_map.f = { 
      \ 'name' : '+files' ,
      \ 'e' : 'file-explorer',
      \ 'E' : 'find-file-in-explorer',
      \ 'f' : 'fuzzy-search',
      \ 'h' : 'save-session',
      \ 'q' : 'close-file',
      \ 'Q' : 'quit',
      \ 'm' : 'reload-vimrc',
      \ 's' : 'save-all',
\ }
let g:which_key_map.t = { 
      \ 'name' : '+tabs' ,
      \ 'm' : {
          \ 'name': '+move',
          \ 'h' : 'next-tab',
          \ 'l' : 'prev-tab',
      \ },
      \ 'h' : 'next-tab',
      \ 'l' : 'prev-tab',
\ }
let g:which_key_map.l = { 
      \ 'name' : '+line',
      \ 'l' : 'append-semicolon',
      \ 'j' : 'split-line',
      \ 'h' : 'append-comma',
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
      \ 'm' : ['GitMessenger'           , 'msg']               ,
      \ 'p' : ['Git push'               , 'push']              
\ }
let g:which_key_map.c = {
      \ 'name' : '+code',
      \ 'a' : 'code-action',
      \ 'R' : 'rename',
      \ 'c' : 'context-menu',
      \ 'b' : 'toggle-tagbar',
      \ 'o' : 'open-link',
      \ 'h' : 'hover',
      \ 'F' : 'formatting',
      \ 'f' : 'range-formatting',
      \ 'l' : 'highlight',
      \ 'L' : 'unmark-highlight',
      \ 's' : 'document-symbol',
      \ 'i' : 'toggle-indent-lines',
      \ 'S' : 'workspace-symbol',
      \ 'g' : {
          \ 'name': '+goto',
          \ 'd' : 'definition',
          \ 't' : 'type-definition',
          \ 'i' : 'implementation',
          \ 'r' : 'references',
      \ },
\ }
let g:which_key_map.p = {
      \ 'name' : '+Plugins',
      \ 'i' : [ 'PlugInstall', 'install' ],
      \ 'u' : [ 'PlugUpdate' , 'update'  ],
      \ 'c' : [ 'PlugClean'  , 'clean'   ],
      \ 'U' : [ 'PlugUpgrade', 'upgrade' ],
      \ 's' : [ 'PlugStatus' , 'status'  ],
\ }
let g:which_key_map.b = {
      \ 'name' : '+buffer' ,
      \ 'd' : 'delete-buffer',
      \ 'f' : 'first-buffer',
      \ 'l' : 'last-buffer',
      \ 'n' : 'next-buffer',
      \ '#' : 'last-used-buffer',
      \ 'p' : 'previous-buffer',
      \ 'x' : 'purge-other-buffers',
      \ 'b' : 'buffers',
\ }
let g:which_key_map.w = {
      \ 'name' : '+windows' ,
      \ 'w' : 'other-window',
      \ 'W' : 'other-window-reverse',
      \ 's' : 'split-window-below',
      \ 'v' : 'split-window-right',
      \ 'h' : 'window-left',
      \ 'j' : 'window-below',
      \ 'l' : 'window-right',
      \ 'k' : 'window-up',
      \ '=' : 'balance-window',
      \ 'q' : 'close-window',
      \ 'Q' : 'close-editor',
      \ '?' : 'windows',
      \ 'x' : {
          \ 'name': '+expand',
          \ 'h' : 'left',
          \ 'j' : 'below',
          \ 'k' : 'up',
          \ 'l' : 'right',
      \ },
      \ 'm' : {
          \ 'name': '+move',
          \ 'h' : 'left',
          \ 'j' : 'bottom',
          \ 'k' : 'top',
          \ 'l' : 'right',
      \ },
\ }

" --- setup ----------------------------------------------------------------------------------
nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>
call which_key#register('<Space>', 'g:which_key_map')
