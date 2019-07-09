"map <F9> :emenu <C-Z>
" map <F9> :%s/^\d/,&<CR><C-O>qaD3@="3)P0D"<CR>6(p+q9@aVGgJZZ

set guicursor+=a:blinkwait0 " disable cursor blink in gvim
set guioptions-=r           " disable right scrollbar
set guioptions-=L           " disable left scrollbar
set guioptions-=T

if !has('nvim')
  set guifont=Fira\ Code\ 12,Monospace\ 9,Terminus\ 8
endif

set linespace=0             " Number of pixel lines inserted between characters
