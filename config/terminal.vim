if has('nvim')
  tnoremap <Esc> <C-\><C-n>
  tnoremap <C-v><Esc> <Esc>

  highlight! link TermCursor Cursor
  highlight! TermCursorNC guibg=#504945 guifg=#ebdbb2 ctermbg=8 ctermfg=15
endif
