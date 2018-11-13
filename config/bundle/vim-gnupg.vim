if !exists("g:decodeqp_command")
    let g:decodeqp_command = 'perl -p -e ''s/=\n//m;s/=([\dA-F]{2})/pack H2,$1/gie'''
    " let g:decodeqp_command = 'qprint --d --noerrcheck'
    " let g:decodeqp_command 'perl -MMIME::QuotedPrint=decode_qp -e ''print decode_qp join"",<>'''
endif

function! s:DecodeQP(l1,l2)
  execute a:l1 . "," . a:l2 . "!" . g:decodeqp_command
endfunction

command! -range=% DecodeQP call s:DecodeQP(<line1>,<line2>)
