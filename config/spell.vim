set nospell
set spellfile=$HOME/.vim/spell/fr.utf-8.add,$HOME/.vim/spell/en.utf-8.add
set spelllang=fr,en
set spellsuggest=double

nnoremap <Leader>zn ]s
nnoremap <Leader>zN ]S
nnoremap <Leader>zp [s
nnoremap <Leader>zP [S

nnoremap <Leader>zf 1z
nnoremap <Leader>ze 2z
nnoremap <Leader>z= 1z=

nnoremap <Leader>zd "zyiw:execute ":silent !open dict://".@z.""<CR>
