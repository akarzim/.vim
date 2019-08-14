
" Initialization {{{1

if !exists("g:loaded_speeddating")
  finish
endif

" }}}1
" Utility Functions {{{1

function! s:function(name)
  return function(substitute(a:name,'^s:',matchstr(expand('<sfile>'), '.*\zs<SNR>\d\+_'),''))
endfunction

" }}}1
" Booleans {{{1

function! s:booleanize(bool)
  if a:bool ==# tolower(a:bool)
    return a:bool == "true" ? "false" : "true"
  elseif a:bool ==# toupper(a:bool)
    return a:bool == "TRUE" ? "FALSE" : "TRUE"
  else
    return a:bool == "True" ? "False" : "True"
  endif
endfunction

function! s:booleanincrement(string,offset,increment)
  if a:increment % 2 == 0
    return [a:string,-1]
  else
    return [s:booleanize(a:string),-1]
  endif
endfunction

let g:speeddating_handlers += [{'regexp': '\<\%(true\|false\|TRUE\|FALSE\|True\|False\)\>', 'increment': s:function("s:booleanincrement")}]

" }}}1

" vim:set et sw=2 sts=2:
