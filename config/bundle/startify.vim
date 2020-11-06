let g:startify_change_to_vcs_root = 1
let g:startify_fortune_use_unicode = 1
let g:startify_update_oldfiles = 1

let g:startify_list_order = [
        \ ['   MRU ' . getcwd()], 'dir',
        \ ['   MRU'], 'files',
        \ ['   Sessions'], 'sessions',
        \ ['   Bookmarks'], 'bookmarks',
        \ ['   Commands'], 'commands',
        \ ]

let g:startify_bookmarks = [
    \ { 'a': '~/.vim/after/plugin/abolish.vim' },
    \ { 'c': '~/.zplug/packages.zsh' },
    \ { 'g': '~/.gitconfig' },
    \ { 'l': '~/.vim/plug.vim' },
    \ { 'r': '~/.rubocop.yml' },
    \ { 's': '~/.vim/config/bundle/startify.vim' },
    \ { 'v': '~/.vim/config.vim' },
    \ { 'z': '~/.zshrc' },
    \ { '*': '~/.config/starship.toml' },
    \ ]

let g:startify_commands = [
    \ { '!': ['Reload', 'so $MYVIMRC | Startify'] },
    \ { 'h': 'CheckHealth' },
    \ { 'm': ['Mail', 'e /tmp/draft.eml'] },
    \ { 't': 'Tutor' },
    \ { 'pi': 'PlugInstall' },
    \ { 'pc': 'PlugClean' },
    \ { 'pu': 'PlugUpdate' },
    \ { 'pU': 'PlugUpgrade' },
    \ ]

let s:tips_dirpath = expand('<sfile>:p:h')
let g:startify_custom_header_quotes = [
      \ {-> systemlist(s:tips_dirpath . '/fortunes/pragmatic_programmer.tip.rb') },
      \ {-> systemlist(s:tips_dirpath . '/fortunes/practical_vim.tip.rb') }
      \ ]

let g:startify_custom_header = eval('startify#pad(startify#fortune#boxed())') + ['']

" Function: s:is_vcs_root {{{1
function! s:is_vcs_root(path) abort
  let dir = fnamemodify(a:path, ':p:h')
  for vcs in [ '.git', '.hg', '.bzr', '.svn' ]
    let root = finddir(vcs, dir .';')
    if !empty(root)
      return v:true
    endif
  endfor
endfunction

if s:is_vcs_root(getcwd())
    let pending_commits = map(systemlist('git cherry --abbrev -v'), 'repeat(" ", 5) . v:val')
    let cached_files = map(systemlist('git diff --cached --stat ' . system('git rev-parse --abbrev-ref HEAD@\{u\}')), 'repeat(" ", 4) . v:val')
    let top3 = map(systemlist('head -n 3', systemlist('git shortlog -ns', systemlist('git log --pretty=short'))), 'repeat(" ", 2) . v:val')

    if len(pending_commits) > 0
        let g:startify_custom_header += [' ↑ Pending commits'] + pending_commits + ['']
    endif

    if len(cached_files) > 0
        let g:startify_custom_header += [' ± Cached files'] + cached_files + ['']
    endif

    if len(top3) > 0
        let g:startify_custom_header += [' ∴ Top 3 authors'] + top3
    endif
endif

nnoremap _ :Startify<cr>
