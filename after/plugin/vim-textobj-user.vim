call textobj#user#plugin('ruby', {
\   'regex_a': {
\     'select': 'a/',
\     '*pattern*': '/[^/]*/'
\   },
\   'regex_i': {
\     'select': 'i/',
\     '*pattern*': '/\zs[^/]\+\ze/'
\   },
\ })
