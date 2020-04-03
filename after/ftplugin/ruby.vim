set shiftwidth=2
set tabstop=2  " tabulation sur 2 caractères
setlocal textwidth=110
setlocal complete-=i

vnoremap crh :s/:\([^ ]*\)\(\s*\)=>/\1:/g<bar>:nohlsearch<CR>
nnoremap crh mmV<bar>:s/:\([^ ]*\)\(\s*\)=>/\1:/g<bar>:nohlsearch<bar>:normal `m<CR>
nnoremap crH :%s/:\([^ ]*\)\(\s*\)=>/\1:/g<bar>:nohlsearch<CR>

vnoremap cri :s/\v((\[)\|,)\s*:(\w+)\s*/\2¬\3/g<bar>'<,'>s/\v(^\|\%i\|(\W))\[¬(\w[^\]:,]*)\]/\2%i[\3]/g<bar>'<,'>s/¬/ /g<bar>:nohlsearch<bar>:normal '<CR><CR>
nnoremap cri mmva[<bar>:s/\v((\[)\|,)\s*:(\w+)\s*/\2¬\3/g<bar>'<,'>s/\v(^\|\%i\|(\W))\[¬(\w[^\]:,]*)\]/\2%i[\3]/g<bar>'<,'>s/¬/ /g<bar>:nohlsearch<bar>:normal `m<CR><CR>
nnoremap crI :%s/\v((\[)\|,)\s*:(\w+)\s*/\2¬\3/g<bar>%s/\v(^\|\%i\|(\W))\[¬(\w[^\]:,]*)\]/\2%i[\3]/g<bar>%s/¬/ /g<bar>:nohlsearch<CR><CR>
vnoremap crw :s/\v((\[)\|,)\s*(["'])(\w+)(\3)\s*/\2¬\4/g<bar>'<,'>s/\v(^\|\%w\|(\W))\[¬(\w[^\]:,]*)\]/\2%w[\3]/g<bar>'<,'>s/¬/ /g<bar>:nohlsearch<bar>:normal `<<CR><CR>
nnoremap crw mmva[<bar>:s/\v((\[)\|,)\s*(["'])(\w+)(\3)\s*/\2¬\4/g<bar>'<,'>s/\v(^\|\%w\|(\W))\[¬(\w[^\]:,]*)\]/\2%w[\3]/g<bar>'<,'>s/¬/ /g<bar>:nohlsearch<bar>:normal `m<CR><CR>
nnoremap crW :%s/\v((\[)\|,)\s*(["'])(\w+)(\3)\s*/\2¬\4/g<bar>%s/\v(^\|\%w\|(\W))\[¬(\w[^\]:,]*)\]/\2%w[\3]/g<bar>%s/¬/ /g<bar>:nohlsearch<CR><CR>
