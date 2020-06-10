set autoindent       " automatically indent new lines

set formatoptions=
set formatoptions+=t " auto-wrap text using textwidth
set formatoptions+=c " auto-wrap comments using textwidth
set formatoptions+=r " auto-insert the current comment leader after <CR>
set formatoptions+=o " continue comment marker in new lines
set formatoptions+=q " allow formatting of comments with "gq"
set formatoptions+=n " recognize numbered lists
set formatoptions+=j " emove a comment leader when joining lines

set tabstop=2        " render TABs using this many spaces
set expandtab        " insert spaces when <TAB> is pressed
set softtabstop=2    " ... this many spaces
set shiftwidth=2     " indentation amount for < and > commands
set backspace=2      " remove this many spaces when <BS> is pressed

" format SQL
if executable('sqlformat')
  vnoremap <leader>sql :'<,'>!sqlformat - -r -s -k upper<CR>
  nnoremap <leader>sql :%!sqlformat - -r -s -k upper<CR>
endif

" format JSON
if executable("python")
  nnoremap <leader>json :%!python -m json.tool<CR>
  vnoremap <leader>json :'<,'>!python -m json.tool<CR>
endif
