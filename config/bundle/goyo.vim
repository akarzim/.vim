" function! s:goyo_enter()
"   set spell spelllang=en,fr
"   Limelight
" endfunction

" function! s:goyo_leave()
"   setlocal spell spellang=
"   Limelight!
" endfunction

" autocmd! User GoyoEnter nested call <SID>goyo_enter()
" autocmd! User GoyoLeave nested call <SID>goyo_leave()

function! s:goyo_enter()
  setlocal cursorline
endfunction

function! s:goyo_leave()
  setlocal nocursorline
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()
