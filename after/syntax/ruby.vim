syn match   rubyDebug "\<byebug\>[?!]\@!"
syn match   rubyDebug /\zsbinding\.pry\ze/
hi def link rubyDebug Error

syn match rubyTodo /\v# \zs(TODO|FIXME|HACK|REVIEW|NOTE|DEPRECATED|BUG|XXX)\ze:/
hi def link rubyTodo Todo

