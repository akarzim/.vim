let g:deoplete#enable_at_startup = 1

call deoplete#custom#option('on_insert_enter', v:false)

call deoplete#custom#option('sources', {
\ '_': ['around', 'buffer', 'omni'],
\ 'ruby': ['around', 'buffer', 'tag', 'omni'],
\})

" Change the source rank
call deoplete#custom#source('around', 'rank', 3000)
call deoplete#custom#source('buffer', 'rank', 2500)
call deoplete#custom#source('omni', 'rank', 50)
