set shiftwidth=2
set tabstop=2  " tabulation sur 2 caractères
setlocal textwidth=110
setlocal complete-=i

vnoremap crh :s/:\([^ ]*\)\(\s*\)=>/\1:/g<bar>:nohlsearch<Return>
nnoremap crh mmV<bar>:s/:\([^ ]*\)\(\s*\)=>/\1:/g<bar>:nohlsearch<bar>:normal `m<Return>
nnoremap crH :%s/:\([^ ]*\)\(\s*\)=>/\1:/g<bar>:nohlsearch<Return>

nnoremap cri mmva[<bar>:s/\v:(\w+),?/\1/g<bar>s/\v(\[([^\]])*\])/%i\1/g<bar>:nohlsearch<bar>:normal `m<Return>
nnoremap crw mmva[<bar>:s/\v(["'])(\w+)\1,?/\2/g<bar>s/\v(\[([^\]])*\])/%w\1/g<bar>:nohlsearch<bar>:normal `m<Return>
