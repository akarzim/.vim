" source block syntax highlighting
if exists('g:loaded_SyntaxRange')
  for lang in ['ruby', 'vim', 'sh', 'sql', 'javascript']
    call SyntaxRange#Include(
          \  '\c\[source\s*,\s*' . lang . '.*\]\s*\n[=-]\{4,\}\n'
          \, '\]\@<!\n[=-]\{4,\}\n'
          \, lang, 'NonText')
  endfor
endif
