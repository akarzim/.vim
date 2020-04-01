" let g:neomake_logfile = '/tmp/neomake.log'

let g:neomake_javascript_eslint_maker = { 'exe': '/Users/fvantomme/.nvm/versions/node/v13.1.0/bin/eslint' }
let g:neomake_javascript_jshint_maker = { 'exe': '/Users/fvantomme/.nvm/versions/node/v13.1.0/bin/jshint' }

" let g:neomake_coffee_enabled_makers     = ['coffeelint']
" let g:neomake_scss_enabled_makers       = ['sasslint', 'scsslint']
" let g:neomake_slim_enabled_makers       = ['slimlint']
" let g:neomake_json_enabled_makers       = ['jsonlint']
" let g:neomake_html_enabled_makers       = ['tidy', 'htmlhint']
let g:neomake_javascript_enabled_makers = ['jshint', 'eslint']
let g:neomake_ruby_enabled_makers       = ['mri', 'rubocop']

let g:neomake_error_sign =   { 'text': '●', 'texthl': 'GruvboxRedSign' }
let g:neomake_warning_sign = { 'text': '◇', 'texthl': 'GruvboxYellowSign' }
let g:neomake_info_sign =    { 'text': '◎', 'texthl': 'GruvboxBlueSign' }
let g:neomake_message_sign = { 'text': '○', 'texthl': 'GruvboxPurpleSign' }

autocmd! BufWritePost * Neomake
