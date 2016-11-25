setlocal nospell
setlocal spelllang=fr,en
setlocal spellfile=$HOME/.vim/spell/fr.utf-8.add,$HOME/.vim/spell/en.utf-8.add


nnoremap <Leader>zn ]s
nnoremap <Leader>zN G[s
nnoremap <Leader>zp [s
nnoremap <Leader>zP gg]s

nnoremap <Leader>zf 1z
nnoremap <Leader>ze 2z
nnoremap <Leader>z= 1z=

nnoremap <Leader>zd "zyiw:execute ":silent !open dict://".@z.""<CR>
