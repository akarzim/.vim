if !exists("g:loaded_switch")
  finish
endif

autocmd FileType markdown let b:switch_custom_definitions =
    \ [
    \   { '\v^(\s*[*+-] )?\[ \]': '\1[x]',
    \     '\v^(\s*[*+-] )?\[x\]': '\1[-]',
    \     '\v^(\s*[*+-] )?\[-\]': '\1[ ]',
    \   },
    \   { '\v^(\s*\d+\. )?\[ \]': '\1[x]',
    \     '\v^(\s*\d+\. )?\[x\]': '\1[-]',
    \     '\v^(\s*\d+\. )?\[-\]': '\1[ ]',
    \   },
    \ ]

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
    \     '\v\[\s*%((["''])%([^"'']\s@!)+\1,?\s*)*]': {
    \       '\[':                                    '%w[',
    \       '\v\s*(["''])(%([^"'']\s@!)+)\1,?(\s)*': '\2\3',
    \       '\s*]':                                  ']',
    \     },
    \     '\v\%w\[\s*%([^"'',]\s*)+\]': {
    \       '%w\[\s*':        '["',
    \       '\v(\s+)@>\)@!': '", "',
    \       '\s*\]':          '"]',
    \     },
    \     '\v\%w\(\s*%([^"'',]\s*)+\)': {
    \       '%w(\s*':        '["',
    \       '\v(\s+)@>\)@!': '", "',
    \       '\s*)':          '"]',
    \     },
    \     '\v\[\s*%(:\@{0,2}\k+,?\s*)+\]': {
    \       '\[':                        '%i[',
    \       '\v\s*:(\@{0,2}\k+),?(\s)*': '\1\2',
    \       '\s*]':                      ']',
    \     },
    \     '\v\%i\[\s*%(\@{0,2}\k+\s*)+\]': {
    \       '\v\%i\[(\s*)@>': '[:',
    \       '\v(\s+)@>\]@!':  ', :',
    \       '\s*\]':           ']',
    \     },
    \     '\v\%i\(\s*%(\@{0,2}\k+\s*)+\)': {
    \       '\v\%i\((\s*)@>': '[:',
    \       '\v(\s+)@>\)@!':  ', :',
    \       '\s*)':           ']',
    \     },
    \   },
    \   g:switch_builtins.ruby_fetch,
    \ ]

" vim:set et sw=2 sts=2:
