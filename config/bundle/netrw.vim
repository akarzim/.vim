" Netrw
let g:netrw_winsize   = 70
let g:netrw_liststyle = 0                           " thin listing (one file per line)
let g:netrw_list_hide = netrw_gitignore#Hide()      " hide files ignored by git
let g:netrw_list_hide .= '\(^\|\s\s\)\zs\.\S\+'     " hide dotfiles
let g:netrw_sort_sequence = '[\/]$,\.rb$,\.py$,\.h$,\.c$,\.cpp$,*,\.o$,\.obj$,\.info$,\.swp$,\.bak$,\~$'
