if exists("b:current_syntax")
  unlet b:current_syntax
endif

if !exists('main_syntax')
  let main_syntax = 'markdown'
endif

" use YAML syntax for Markdown frontmatter
syn include @yamlTop syntax/yaml.vim
syn region Comment matchgroup=mkdDelimiter start="\%^---$" end="^---$" contains=@yamlTop

syn region markdownCode matchgroup=markdownCodeDelimiter start="\~" end="\~" keepend contains=markdownLineStart
syn region markdownCode matchgroup=markdownCodeDelimiter start="\~\~ \=" end=" \=\~\~" keepend contains=markdownLineStart
syn region markdownCode matchgroup=markdownCodeDelimiter start="^\s*\~\~\~*.*$" end="^\s*\~\~\~*\ze\s*$" keepend

if main_syntax ==# 'markdown'
  let s:done_include = {}
  for s:type in g:markdown_fenced_languages
    if has_key(s:done_include, matchstr(s:type,'[^.]*'))
      continue
    endif
    exe 'syn region markdownHighlight'.substitute(matchstr(s:type,'[^=]*$'),'\..*','','').' matchgroup=markdownCodeDelimiter start="^\s*\~\~\~*\s*'.matchstr(s:type,'[^=]*').'\>.*$" end="^\s*\~\~\~*\ze\s*$" keepend contains=@markdownHighlight'.substitute(matchstr(s:type,'[^=]*$'),'\.','','g')
    let s:done_include[matchstr(s:type,'[^.]*')] = 1
  endfor
  unlet! s:type
  unlet! s:done_include
endif

let b:current_syntax = "markdown"
if main_syntax ==# 'markdown'
  unlet main_syntax
endif
