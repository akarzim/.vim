set clipboard+=unnamed        " use the clipboard register '*'
set cmdheight=1               " number of screen lines to use for the command-line.
set novisualbell              " don't flash the screen
set lazyredraw                " do not redraw the screen while executing commands that have not been typed.
set listchars=trail:␣,tab:-¬,extends:…,precedes:…,nbsp:␠,eol:␍

set fillchars=                " fill the statuslines and vertical separators
set laststatus=2              " always show status line
set statusline=%F%m%r%h%w%10{getfsize(expand('%'))}o\ \ \ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}

set ruler                     " show the line and column number of the cursor position
set number                    " print the line number in front of each line

set showmatch                 " when a bracket is inserted, briefly jump to the matching one
