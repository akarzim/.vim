" hard-wrap long lines as you type them
setlocal textwidth=80

let g:markdown_fenced_languages = ['ruby', 'vim', 'bash=sh', 'sh', 'sql']

" insert a code-block paragraph
inoremap <buffer> § ~~~<CR><CR>~~~<Up>
