call plug#begin()

" bundles
Plug 'bling/vim-airline'
Plug 'edsono/vim-matchit'
Plug 'kien/ctrlp.vim'
Plug 'rking/ag.vim'
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
Plug 'kchmck/vim-coffee-script'

" haml
Plug 'tpope/vim-haml'

" jade
Plug 'digitaltoad/vim-jade'

" javascript
Plug 'Shutnik/jshint2.vim'
Plug 'jiangmiao/simple-javascript-indenter'
Plug 'moll/vim-node'
Plug 'othree/javascript-libraries-syntax.vim'

" less
Plug 'groenewege/vim-less'

" markdown
function! BuildComposer(info)
  if a:info.status != 'unchanged' || a:info.force
    !cargo build --release
    UpdateRemotePlugins
  endif
endfunction

Plug 'euclio/vim-markdown-composer', { 'do': function('BuildComposer') }

" python
Plug 'vim-scripts/pylint.vim'

" ruby
Plug 'kana/vim-textobj-user' | Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'ngmy/vim-rubocop'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rake'

" slim
Plug 'slim-template/vim-slim'

call plug#end()
