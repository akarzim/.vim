call plug#begin()

" bundles
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'kien/ctrlp.vim'
Plug 'rking/ag.vim'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'wakatime/vim-wakatime'

" syntax
function! InstallCheckers(info)
  if a:info.status != 'unchanged' || a:info.force
    !npm install -g jsonlint coffee coffeelint sass scsslint eslint jscs
    !gem install rubocop
  endif
endfunction

Plug 'scrooloose/syntastic', {
            \ 'on': ['SyntasticCheck', 'SyntasticStatuslineFlag'],
            \ 'for': ['sass', 'less', 'css', 'javascript', 'coffee', 'ruby', 'json'],
            \ 'do': function('InstallCheckers') }

" coffeescript
Plug 'kchmck/vim-coffee-script', { 'for': 'coffeescript' }

" haml
Plug 'tpope/vim-haml', { 'for': 'html' }

" jade
Plug 'digitaltoad/vim-jade', { 'for': 'jade' }

" javascript
Plug 'jiangmiao/simple-javascript-indenter',   { 'for': 'javascript' }
Plug 'moll/vim-node',                          { 'for': 'javascript' }
Plug 'othree/javascript-libraries-syntax.vim', { 'for': 'javascript' }

" less
Plug 'groenewege/vim-less', { 'for': 'less' }

" markdown
Plug 'junegunn/goyo.vim',      { 'for': 'markdown' }
Plug 'junegunn/limelight.vim', { 'for': 'markdown' }

" python
Plug 'vim-scripts/pylint.vim', { 'for': 'python' }

" ruby
Plug 'vim-ruby/vim-ruby',   { 'for': 'ruby' }
Plug 'tpope/vim-bundler',   { 'for': 'ruby' }
Plug 'tpope/vim-endwise',   { 'for': 'ruby' }
Plug 'tpope/vim-rails',     { 'for': 'ruby' }
Plug 'tpope/vim-rake',      { 'for': 'ruby' }
Plug 'ngmy/vim-rubocop',    { 'for': 'ruby' }
Plug 'kana/vim-textobj-user' | Plug 'nelstrom/vim-textobj-rubyblock'

" slim
Plug 'slim-template/vim-slim', { 'for': 'slim' }

call plug#end()
