if exists("b:current_syntax")
  unlet b:current_syntax
endif

if !exists('main_syntax')
  let main_syntax = 'eml'
endif

syn match mailRegion "^--Apple-Mail=.\+[?!]\@!"
syn match mailHead "Content\(-\w\+\)\+: [^;]\+\(;\_s\+[^;]\+\)*[?!]\@!"
syn region pgpSignature start="^-----BEGIN PGP SIGNATURE-----$" end="^-----END PGP SIGNATURE-----$" contains=Conceal

hi def link mailRegion NonText
hi def link mailHead Comment
hi def link pgpSignature Conceal
