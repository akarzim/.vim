set scrolloff=5 " context lines around cursor
set scrolljump=1

" retain relative cursor position when paging
nnoremap <PageUp> <C-U>
nnoremap <PageDown> <C-D>

" store relative line number jumps in jumplist
" while treating wrapped lines like real lines
" NOTE: m' stores current position in jumplist
" NOTE: thanks to osse and bairui in #vim IRC!
nnoremap <silent> k :<C-U>execute 'normal!' (v:count>1 ? "m'".v:count.'k' : 'gk')<Return>
nnoremap <silent> j :<C-U>execute 'normal!' (v:count>1 ? "m'".v:count.'j' : 'gj')<Return>

" apply these tricks to up and down arrow keys
nmap <Up> k
nmap <Down> j

" remap caret deadkey to tick
nmap ' ^

" location list
nnoremap <Leader>lO :lolder<Return>
nnoremap <Leader>lo :lopen<Return>
nnoremap <Leader>lf :lfirst<Return>
nnoremap <Leader>lp :lprevious<Return>
nnoremap <Leader>ln :lnext<Return>
nnoremap <Leader>ll :llast<Return>
nnoremap <Leader>lc :lclose<Return>
nnoremap <Leader>lN :lnewer<Return>

" quickfix list
nnoremap <Leader>cO :colder<Return>
nnoremap <Leader>co :copen<Return>
nnoremap <Leader>cf :cfirst<Return>
nnoremap <Leader>cp :cprevious<Return>
nnoremap <Leader>cn :cnext<Return>
nnoremap <Leader>cl :clast<Return>
nnoremap <Leader>cc :cclose<Return>
nnoremap <Leader>cN :cnewer<Return>
