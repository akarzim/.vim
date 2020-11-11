" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
if has('nvim')
  call plug#begin(stdpath('data') . '/plugged')
else
  call plug#begin('~/.vim/plugged')
endif

" bundles
Plug 'andrewradev/splitjoin.vim'
Plug 'andrewradev/switch.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'
Plug 'kana/vim-textobj-entire'
Plug 'mbbill/undotree'
Plug 'mhinz/vim-startify'
Plug 'rking/ag.vim'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-vinegar'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" colorscheme
Plug 'morhetz/gruvbox'

" Git
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

" ctags
Plug 'ludovicchabant/vim-gutentags'

" syntax
Plug 'akarzim/vim-Grammalecte', { 'branch': 'toggle-grammalecte' }
" Plug 'dpelle/vim-Grammalecte'
Plug 'neomake/neomake'
Plug 'sheerun/vim-polyglot'

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
Plug 'kana/vim-textobj-user' | Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'noprompt/vim-yardoc', { 'for': 'ruby' }
Plug 'tpope/vim-bundler',   { 'for': 'ruby' }
Plug 'tpope/vim-endwise',   { 'for': 'ruby' }
Plug 'tpope/vim-rails',     { 'for': 'ruby' }
Plug 'tpope/vim-rake',      { 'for': 'ruby' }
Plug 'vim-ruby/vim-ruby',   { 'for': 'ruby' }

" gpg
Plug 'akarzim/vim-decode-qp', { 'for': 'asc' }
Plug 'jamessan/vim-gnupg'

call plug#end()
