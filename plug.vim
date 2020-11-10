" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
if has('nvim')
  call plug#begin(stdpath('data') . '/plugged')
else
  call plug#begin('~/.vim/plugged')
endif

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
Plug 'tpope/vim-speeddating'
Plug 'andrewradev/splitjoin.vim'
Plug 'andrewradev/switch.vim'
Plug 'junegunn/vim-easy-align'
Plug 'mhinz/vim-startify'
" Plug 'sjl/gundo.vim'
Plug 'mbbill/undotree'

" colorscheme
Plug 'morhetz/gruvbox'

" Git
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

" ctags
Plug 'ludovicchabant/vim-gutentags'

" syntax
Plug 'sheerun/vim-polyglot'
Plug 'neomake/neomake'
" Plug 'dpelle/vim-Grammalecte'
Plug 'akarzim/vim-Grammalecte', { 'branch': 'toggle-grammalecte' }

" complete
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

Plug 'fishbullet/deoplete-ruby'

" markdown
Plug 'junegunn/goyo.vim',      { 'for': ['markdown', 'asciidoc'] }
" Plug 'junegunn/limelight.vim', { 'for': ['markdown', 'asciidoc'] }

" ruby
Plug 'vim-ruby/vim-ruby',   { 'for': 'ruby' }
Plug 'tpope/vim-bundler',   { 'for': 'ruby' }
Plug 'tpope/vim-endwise',   { 'for': 'ruby' }
Plug 'tpope/vim-rails',     { 'for': 'ruby' }
Plug 'tpope/vim-rake',      { 'for': 'ruby' }
Plug 'noprompt/vim-yardoc', { 'for': 'ruby' }
Plug 'kana/vim-textobj-user' | Plug 'nelstrom/vim-textobj-rubyblock'

" gpg
Plug 'akarzim/vim-decode-qp', { 'for': 'asc' }
Plug 'jamessan/vim-gnupg'

call plug#end()
