let g:abolish_save_file = expand('<sfile>')

if !exists(":Abolish")
  finish
endif

Abolish udpat{e,es,ed,ing} updat{}
Abolish {,invalid_}attriubt{e,es} {}attribut{}
Abolish {configur,form,associ}aiton{,s} {}ation{}
Abolish {configur,form,associ}atoin{,s} {}ation{}
Abolish adatper{,s} adapter{}
Abolish purcahse{,s} purchase{}
