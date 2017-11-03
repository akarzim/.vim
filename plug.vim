call plug#begin()

" bundles
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'rking/ag.vim'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'andrewradev/splitjoin.vim'
Plug 'junegunn/vim-easy-align'
Plug 'mhinz/vim-startify'
" Plug 'sjl/gundo.vim'
Plug 'mbbill/undotree'

" colorscheme
Plug 'morhetz/gruvbox'

" Git
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

" syntax
Plug 'neomake/neomake'
Plug 'vim-scripts/SyntaxRange' " asciidoc code highlighting
" Plug 'dpelle/vim-Grammalecte'
Plug 'akarzim/vim-Grammalecte', { 'branch': 'toggle-grammalecte' }

" complete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'fishbullet/deoplete-ruby'

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
Plug 'junegunn/goyo.vim',      { 'for': ['markdown', 'asciidoc'] }
" Plug 'junegunn/limelight.vim', { 'for': ['markdown', 'asciidoc'] }

" python
Plug 'vim-scripts/pylint.vim', { 'for': 'python' }

" ruby
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-bundler',   { 'for': 'ruby' }
Plug 'tpope/vim-endwise',   { 'for': 'ruby' }
Plug 'tpope/vim-rails',     { 'for': 'ruby' }
Plug 'tpope/vim-rake',      { 'for': 'ruby' }
Plug 'ngmy/vim-rubocop',    { 'for': 'ruby' }
Plug 'noprompt/vim-yardoc', { 'for': 'ruby' }
Plug 'kana/vim-textobj-user' | Plug 'nelstrom/vim-textobj-rubyblock'

" slim
Plug 'slim-template/vim-slim', { 'for': 'slim' }

" gpg
Plug 'jamessan/vim-gnupg'

call plug#end()
