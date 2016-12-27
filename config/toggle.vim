set pastetoggle=<F10>

" Toggle line numbers and fold column for easy copying:
" nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>

" Toggle relative line numbers
" nnoremap <F3> :set relativenumber<CR>

nnoremap <Leader>t/ :setlocal hlsearch!<Return>
nnoremap <Leader>te :setlocal list! list?<Return>
nnoremap <Leader>tn :setlocal number!<Return>
nnoremap <Leader>tN :setlocal relativenumber!<Return>
nnoremap <Leader>tp :setlocal paste!<Return>
nnoremap <Leader>tz :setlocal spell! spell?<Return>
nnoremap <Leader>tf :setlocal foldenable!<Return>
nnoremap <Leader>tc :setlocal cursorcolumn!<Return>
nnoremap <Leader>tC :setlocal cursorline!<Return>
nnoremap <Leader>tw :setlocal wrap! wrap?<Return>
nnoremap <Leader>th :Limelight!!<Return>
nnoremap <Leader>to :Goyo<Return>
" nnoremap <Leader>tu :GundoToggle<Return>
nnoremap <Leader>tu :UndotreeToggle<Return>
nnoremap <expr> <Leader>tb ':setlocal background=' . ((&background == 'dark') ? 'light<CR>' : 'dark<CR>')
" nnoremap <Leader>tq :cwindow<Return>
" nnoremap <Leader>tl :lwindow<Return>
