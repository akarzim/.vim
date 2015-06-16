set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_aggregate_errors = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

let g:syntastic_html_tidy_exec = 'tidy5'

let g:syntastic_javascript_checkers = ['eslint', 'jshint']
" let g:syntastic_javascript_checkers = ['eslint', 'jshint', 'jscs']

" let g:syntastic_ruby_checkers = ['mri', 'rubocop']

" let g:syntastic_scss_scss_lint_exec = 'scss-lint'
" let g:syntastic_scss_checkers = ['scss_lint']
let g:syntastic_scss_checkers = []

