set shiftwidth=2
set tabstop=2  " tabulation sur 2 caractères
setlocal textwidth=110
setlocal complete-=i

vnoremap crh :s/:\([^ ]*\)\(\s*\)=>/\1:/g<bar>:nohlsearch<Return>
nnoremap crh V<bar>:s/:\([^ ]*\)\(\s*\)=>/\1:/g<bar>:nohlsearch<Return>
nnoremap crH :%s/:\([^ ]*\)\(\s*\)=>/\1:/g<bar>:nohlsearch<Return>
