setlocal nospell
setlocal spelllang=fr,en
setlocal spellfile=$HOME/.vim/spell/fr.utf-8.add,$HOME/.vim/spell/en.utf-8.add

hi clear SpellBad
hi clear SpellCap
hi clear SpellRare
hi clear SpellLocal
hi SpellBad   cterm=underline ctermfg=9  ctermbg=0 gui=undercurl
hi SpellCap   cterm=underline ctermfg=14 ctermbg=0 gui=undercurl
hi SpellRare  cterm=underline ctermfg=13 ctermbg=0 gui=undercurl
hi SpellLocal cterm=underline ctermfg=11 ctermbg=0 gui=undercurl

nnoremap <Leader>zn ]s
nnoremap <Leader>zN G[s
nnoremap <Leader>zp [s
nnoremap <Leader>zP gg]s

nnoremap <Leader>zf 1z
nnoremap <Leader>ze 2z
nnoremap <Leader>z= 1z=

nnoremap <Leader>zd "zyiw:execute ":silent !open dict://".@z.""<CR>
