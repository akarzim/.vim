set nocompatible

filetype on
filetype indent on
filetype plugin on

syntax enable

set cpoptions-=<        " enable the recognition of special key codes in <> form in mappings
set iskeyword+=$,%,#,-  " keywords are used in searching and recognizing with many commands

let g:python_host_prog='/usr/local/bin/python'
let g:python3_host_prog='/usr/local/bin/python3'

" register plugins with vim-plug
runtime! plug.vim

" delegate configuration to files in config/
runtime! config/**/*.vim
