" hard-wrap long lines as you type them
setlocal textwidth=80

" r	Automatically insert the current comment leader after hitting
" 	<Enter> in Insert mode.
" o	Automatically insert the current comment leader after hitting 'o' or
" 	'O' in Normal mode.
set formatoptions+=ro

" The 'comments' option is a comma-separated list of parts.
" Each part defines a type of comment string.
" A part consists of: {flags}:{string}

" {string} is the literal text that must appear.

" {flags}:
"   n	Nested comment.  Nesting with mixed parts is allowed.
"   b	Blank (<Space>, <Tab> or <EOL>) required after {string}.
set comments=n:>
set comments+=b:*\ [\ ],b:-\ [\ ],b:+\ [\ ],b:1.\ [\ ]
set comments+=b:*\ [x],b:-\ [x],b:+\ [x],b:1.\ [x]
set comments+=b:*\ [-],b:-\ [-],b:+\ [-],b:1.\ [-]
set comments+=b:*,b:-,b:+,b:1.,n:>

" multiline list item
inoremap <buffer><silent> <S-CR> <CR><ESC>:normal v^r<Space><CR>A<Space>

" insert a code-block paragraph
inoremap <buffer><silent> § ~~~<Enter>~~~<C-o>k<C-o>A

" indent a list item
inoremap <buffer><silent> <TAB> <C-o>>><C-o>A
inoremap <buffer><silent> <S-TAB> <C-o><<<C-o>A
