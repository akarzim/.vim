if exists("b:current_syntax")
  unlet b:current_syntax
endif

if !exists('main_syntax')
  let main_syntax = 'gpg'
endif

syn match gpgHeader "\(Content\(-\w\+\)\+: [^;]\+\(;\_s\+[^;]\+\)*\)[?!]\@!"
hi def link gpgHeader Comment

syn include @mail syntax/mail.vim
syn region gpgAppleMail start="^--Apple-Mail=.\+$" end="^--Apple-Mail=.\+--$" contains=@mail
