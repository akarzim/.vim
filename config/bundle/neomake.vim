" let g:neomake_logfile = '/tmp/neomake.log'

" let g:neomake_coffee_enabled_makers     = ['coffeelint']
" let g:neomake_javascript_enabled_makers = ['jshint', 'jscs', 'eslint']
" let g:neomake_scss_enabled_makers       = ['sasslint', 'scsslint']
" let g:neomake_slim_enabled_makers       = ['slimlint']
" let g:neomake_json_enabled_makers       = ['jsonlint']
" let g:neomake_html_enabled_makers       = ['tidy', 'htmlhint']
" let g:neomake_ruby_enabled_makers       = ['mri', 'rubocop', 'reek']
let g:neomake_ruby_enabled_makers       = ['mri', 'rubocop']

augroup my_error_signs
    au!
    autocmd ColorScheme * hi NeomakeErrorSign ctermfg=red
    autocmd ColorScheme * hi NeomakeWarningSign ctermfg=yellow
    autocmd ColorScheme * hi NeomakeMessageSign ctermfg=blue
augroup END

autocmd! BufWritePost * Neomake
