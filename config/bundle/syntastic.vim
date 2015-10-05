set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_aggregate_errors = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"
let g:syntastic_style_error_symbol = "✗"
let g:syntastic_style_warning_symbol = "⚠"

let g:syntastic_mode_map = {
        \ "mode": "passive",
        \ "active_filetypes": ["coffee", "javascript", "sass", "ruby", "json", "html"] }

let g:syntastic_coffeescript_checkers = ['coffee', 'coffeelint']
let g:syntastic_javascript_checkers = ['eslint', 'jscs']
let g:syntastic_scss_checkers = ['sass', 'scss_lint']
let g:syntastic_ruby_checkers = ['mri', 'rubocop']
let g:syntastic_json_checkers = ['jsonlint']
let g:syntastic_html_tidy_exec = 'tidy5'
