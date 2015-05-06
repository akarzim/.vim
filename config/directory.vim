" Save your backups to a less annoying place than the current directory.
if isdirectory($HOME . '/.vim/vimfiles/backup') == 0
  :silent !mkdir -p ~/.vim/vimfiles/backup >/dev/null 2>&1
endif
set backupdir=~/.vim/vimfiles/backup//
set backup

" Save your swp files to a less annoying place than the current directory.
if isdirectory($HOME . '/.vim/temp') == 0
  :silent !mkdir -p ~/.vim/vimfiles/temp >/dev/null 2>&1
endif
set directory=~/.vim/vimfiles/temp//

" viminfo stores the the state of your previous editing session
set viminfo+=n~/.vim/viminfo

if exists("+undofile")
  " undofile - This allows you to use undos after exiting and restarting
  " This, like swap and backups, uses ~/.vim/vimfiles/undo
  " :help undo-persistence
  " This is only present in 7.3+
  if isdirectory($HOME . '/.vim/vimfiles/undo') == 0
    :silent !mkdir -p ~/.vim/vimfiles/undo > /dev/null 2>&1
  endif
  set undodir=~/.vim/vimfiles/undo//
  set undofile
endif
