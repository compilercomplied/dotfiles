" Display errors from Ale in statusline
function! LinterStatus() abort
    if exists(:ALEEnable)
        let l:counts = ale#statusline#Count(bufnr(''))
        let l:all_errors = l:counts.error + l:counts.style_error
        let l:all_non_errors = l:counts.total - l:all_errors
        return l:counts.total == 0 ? '' : printf(
        \ 'W:%d E:%d',
        \ l:all_non_errors,
        \ l:all_errors
        \)
    endif
endfunction

" Get git branch
function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

" Display git branch
function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction


" show a lock symbol when the file is readonly
function! ReadOnly() abort
  if &readonly || !&modifiable
    return '!!'
  else
    return ''
endfunction

" Status Line Custom
" TODO weird issue with V·Block in which it doesn't found the key (^V)
let g:currentmode={
    \ 'n'  : 'Normal',
    \ 'no' : 'Normal·Operator Pending',
    \ 'v'  : 'Visual',
    \ 'V'  : 'V·Line',
    \ '^V' : 'V·Block',
    \ 's'  : 'Select',
    \ 'S'  : 'S·Line',
    \ '^S' : 'S·Block',
    \ 'i'  : 'Insert',
    \ 'R'  : 'Replace',
    \ 'Rv' : 'V·Replace',
    \ 'c'  : 'Command',
    \ 'cv' : 'Vim Ex',
    \ 'ce' : 'Ex',
    \ 'r'  : 'Prompt',
    \ 'rm' : 'More',
    \ 'r?' : 'Confirm',
    \ '!'  : 'Shell',
    \ 't'  : 'Terminal'
    \}

" Function: return current mode
" abort -> function will abort soon as error detected
function! CurrentMode() abort
    let l:modecurrent = mode()
    " use get() -> fails safely, since ^V doesn't seem to register
    " 3rd arg is used when return of mode() == 0, which is case with ^V
    " thus, ^V fails -> returns 0 -> replaced with 'V Block'
    let l:modelist = toupper(get(g:currentmode, l:modecurrent, 'V·Block '))
    let l:current_status_mode = l:modelist
    return l:current_status_mode
endfunction

" return filesize
function! FileSize() abort
    let l:bytes = getfsize(expand('%p'))
    if (l:bytes >= 1024)
        let l:kbytes = l:bytes / 1025
    endif
    if (exists('kbytes') && l:kbytes >= 1000)
        let l:mbytes = l:kbytes / 1000
    endif
 
    if l:bytes <= 0
        return '0'
    endif
  
    if (exists('mbytes'))
        return l:mbytes . 'MB'
    elseif (exists('kbytes'))
        return l:kbytes . 'KB'
    else
        return l:bytes . 'B'
    endif
endfunction

set statusline=
set statusline+=%#PmenuSel#
set statusline+=%{CurrentMode()}
set statusline+=%#LineNr#
"set statusline+=\ 
set statusline+=%{ReadOnly()}
set statusline+=\ 
set statusline+=%f
set statusline+=\ 
set statusline+=\(%{FileSize()}\)
set statusline+=%m
set statusline+=\ 
set statusline+=%#PmenuSel#
set statusline+=%{StatuslineGit()}
set statusline+=%#LineNr#
set statusline+=\ 
set statusline+=%=
set statusline+=%#CursorColumn#
set statusline+=\ 
set statusline+=%#PmenuSel#
set statusline+=\[%{virtualenv#statusline()}\]
set statusline+=%#LineNr#
set statusline+=\ 
set statusline+=%y
set statusline+=\ 
set statusline+=%{&fileencoding?&fileencoding:&encoding}
set statusline+=\[%{&fileformat}\]
set statusline+=\ 
set statusline+=%p%%
set statusline+=\ 
set statusline+=%l:%c
set statusline+=\ 
set statusline+=%{LinterStatus()}
set statusline+=\ 

