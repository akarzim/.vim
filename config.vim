set nocompatible

filetype on
filetype indent on
filetype plugin on

syntax enable

" register plugins with vim-plug
runtime! plug.vim

" delegate configuration to files in config/
runtime! config/**/*.vim


set backspace=2
set clipboard+=unnamed
set cmdheight=1
set cpoptions-=<
set fillchars=vert:\ ,stl:\ ,stlnc:\
set formatoptions=tcroqn
set iskeyword+=_,$,@,%,#,-
set lazyredraw
set linespace=0
set makeef=error.err
set mouse=a
set mousemodel=popup    " autorise le menu popup avec la souris
set number
set pastetoggle=<F10>
set ruler
set showmatch
set statusline=%F%m%r%h%w%10{getfsize(expand('%'))}o\ \ \ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
set t_Co=256
set tags+=gems.tags
set wildcharm=<C-Z>
set wildignore=*.pyc,.DS_Store

"map <F9> :emenu <C-Z>
" map <F9> :%s/^\d/,&<CR><C-O>qaD3@="3)P0D"<CR>6(p+q9@aVGgJZZ

" Toggle line numbers and fold column for easy copying:
" nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>

" Toggle relative line numbers
" nnoremap <F3> :set relativenumber<CR>

" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
autocmd BufReadPost *
            \ if line("'\"") > 0 && line("'\"") <= line("$") |
            \   exe "normal g`\"" |
            \ endif

autocmd BufWrite * silent! %s/[\r \t]\+$//

let g:closetag_html_style=1

let g:python_host_prog='/usr/local/bin/python'
let g:python3_host_prog='/usr/local/bin/python3'
