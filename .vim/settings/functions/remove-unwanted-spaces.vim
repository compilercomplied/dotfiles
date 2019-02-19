
function! TrimSpaces() range
  let oldhlsearch=ShowSpaces(1)
  execute a:firstline.",".a:lastline."substitute ///gec"
  let &hlsearch=oldhlsearch
endfunction
command! -bar -nargs=0 -range=% TrimSpaces <line1>,<line2>call TrimSpaces()
