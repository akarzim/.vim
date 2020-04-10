if !exists("g:loaded_switch")
  finish
endif

autocmd FileType ruby let b:switch_no_builtins = 1
autocmd FileType ruby let b:switch_custom_definitions =
    \ [
    \   g:switch_builtins.ruby_hash_style,
    \   g:switch_builtins.ruby_oneline_hash,
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

" vim:set et sw=2 sts=2:
