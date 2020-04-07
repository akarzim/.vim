if !exists("g:loaded_switch")
  finish
endif

let g:switch_no_builtins = 1
let g:switch_custom_definitions =
    \ [
    \   {
    \     '\C\<true\>':  'false',
    \     '\C\<false\>': 'true',
    \   }
    \ ]

autocmd FileType ruby let b:switch_no_builtins = 1
autocmd FileType ruby let b:switch_custom_definitions =
    \ [
    \   g:switch_builtins.ruby_hash_style,
    \  {
    \     '\v\{(\s*:(\k|["''])+\s*\=\>\s*(\k|["''])+\s*,?)*}': {
    \       ':\(\%\(\k\|["'']\)\+\)\s*=>': '\1:',
    \     },
    \     '\v\{(\s*(\k|["''])+:\s*(\k|["''])+,?)*\s*}': {
    \       '\(\%\(\k\|["'']\)\+\):': ':\1 =>',
    \     },
    \   },
    \   g:switch_builtins.ruby_lambda,
    \   g:switch_builtins.rspec_expect,
    \   g:switch_builtins.rspec_to,
    \   g:switch_builtins.rspec_be_truthy_falsey,
    \   {
    \     '\[\%(\k\|\s\|[''",]\)\+\]': {
    \       '\[':                     '%w[',
    \       '\([''"]\)\(\k\+\)\1,\=': '\2',
    \       ']':                      ']',
    \     },
    \     '%w\[\%(\k\|\s\)\+\]': {
    \       '%w\[':       '[',
    \       '\(\k\+\) ':  '"\1", ',
    \       '\(\k\+\)\]': '"\1"]',
    \     },
    \     '\[\%(\k\|\s\|[:,]\)\+\]': {
    \       '\[':           '%i[',
    \       ':\(\k\+\),\=': '\1',
    \     },
    \     '%i\[\%(\k\|\s\)\+\]': {
    \       '%i\[':      '[',
    \       '\(\k\+\)\s\+': ':\1, ',
    \       '\(\k\+\)\]': ':\1]',
    \     },
    \   },
    \   g:switch_builtins.ruby_fetch,
    \ ]

" nnoremap <c-a> :if !switch#Switch() <bar>
"       \ call speeddating#increment(v:count1) <bar> endif<cr>
" nnoremap <c-x> :if !switch#Switch({'reverse': 1}) <bar>
"       \ call speeddating#increment(-v:count1) <bar> endif<cr>

" vim:set et sw=2 sts=2:
