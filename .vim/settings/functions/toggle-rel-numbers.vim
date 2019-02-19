
function! ToggleRelNumber()
    if (&relativenumber == 1)
        set norelativenumber
        set number
    else
        set relativenumber
    endif
endfunction
command! -bar ToggleNumber call ToggleRelNumber()
