" Save your backups to a less annoying place than the current directory.
set backupdir=~/.vim/vimfiles/backup//
set backup

" Save your swp files to a less annoying place than the current directory.
set directory=~/.vim/vimfiles/temp//

" viminfo stores the state of your previous editing session
set viminfo+=n~/.vim/viminfo
set shada='1000,n~/.vim/shada

if exists("+undofile")
  " undofile - This allows you to use undos after exiting and restarting
  " This, like swap and backups, uses ~/.vim/vimfiles/undo
  " :help undo-persistence
  " This is only present in 7.3+
  set undodir=~/.vim/vimfiles/undo//
  set undofile
endif
