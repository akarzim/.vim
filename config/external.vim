" sqlformat
if executable('sqlformat')
  vnoremap <leader>sql :'<,'>!sqlformat - -r -s -k upper<CR>
  nnoremap <leader>sql :%!sqlformat - -r -s -k upper<CR>
endif
