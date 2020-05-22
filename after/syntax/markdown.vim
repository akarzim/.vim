" highlight admonition
hi def link markdownNote      GruvboxBlueSign
hi def link markdownInfo      GruvboxGreenSign
hi def link markdownTip       GruvboxPurpleSign
hi def link markdownTodo      GruvboxPurpleSign
hi def link markdownImportant GruvboxRedSign
hi def link markdownWarning   GruvboxYellowSign
hi def link markdownCaution   GruvboxOrangeSign

syn match markdownNote        /\<NOTE:/
syn match markdownInfo         /\<INFO:/
syn match markdownTip         /\<TIP:/
syn match markdownTodo         /\<TODO:/
syn match markdownImportant   /\<IMPORTANT:/
syn match markdownWarning     /\<WARN\(ING\)\?:/
syn match markdownCaution     /\<CAUTION:/

" Apend our own groups to
" https://github.com/plasticboy/vim-markdown/blob/master/syntax/markdown.vim#L158
syn cluster mkdNonListItem add=markdownNote,markdownInfo,markdownTip,markdownTodo,markdownImportant,markdownWarning,markdownCaution
