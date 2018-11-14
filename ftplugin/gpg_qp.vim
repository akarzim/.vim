" gpg_qp.vim - Decode quoted-printable text
" Maintainer:   François Vantomme <akarzim@pm.me>
" Version:      0.2

if exists("g:loaded_decodeqp") || v:version < 700
  finish
endif
let g:loaded_decodeqp = 1

if !exists("g:decodeqp_command")
  let g:decodeqp_command = 'perl -p -e ''s/=\n//m;s/=([\dA-F]{2})/pack H2,$1/gie'''
endif

function! s:qp(...) abort
  if !a:0
    let &operatorfunc = matchstr(expand('<sfile>'), '[^. ]*$')
    return 'g@'
  elseif a:0 > 1
    let [lnum1, lnum2] = [a:1, a:2]
  else
    let [lnum1, lnum2] = [line("'["), line("']")]
  endif

  echom lnum1 . "," . lnum2
  execute lnum1 . "," . lnum2 . "!" . g:decodeqp_command
endfunction

command! -range=% DecodeQP call s:qp(<line1>,<line2>)
xnoremap <expr> <Plug>DecodeQP <SID>qp()
nnoremap <expr> <Plug>DecodeQP <SID>qp()
nnoremap <expr> <Plug>DecodeQPLine <SID>qp() . '_'

if !hasmapto('<Plug>DecodeQP')
  xmap gcp <Plug>DecodeQP
  nmap gcp <Plug>DecodeQP
  nmap gcpp <Plug>DecodeQPLine
endif
