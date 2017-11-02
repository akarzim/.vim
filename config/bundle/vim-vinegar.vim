let s:dotfiles = '\(^\|\s\s\)\zs\.\S\+'
let s:escape = 'substitute(escape(v:val, ".$~"), "*", ".*", "g")'

let s:bol = '"\\(^\\|\\s\\)".'
let s:eol = '."\\($\\|\\s\\)"'
let g:netrw_list_hide =
      \ join(map(split(&wildignore, ','), s:bol . s:escape . s:eol), ',') . ',^\.\.\=/\=$' .
      \ (get(g:, 'netrw_list_hide', '')[-strlen(s:dotfiles)-1:-1] ==# s:dotfiles ? ','.s:dotfiles : '')
