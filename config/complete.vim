set complete=.,w,b,u,t,i,kspell
" enable i_CTRL-X_CTRL-U completion using syntax highlighting definitions
set completefunc=syntaxcomplete#Complete

set path+=**                   " find files recursively

set wildcharm=<C-Z>            " automatically invoke completion mode in macro
set wildignore=*.pyc,.DS_Store " autocompletion ingored files
set wildmenu                   " tab-completion menu for command mode
" set wildmode=list:longest,full
