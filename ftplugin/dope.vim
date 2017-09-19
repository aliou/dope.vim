if (exists('b:did_ftplugin'))
  finish
endif
let b:did_ftplugin = 1

" What can start a comment line. See :help |format-comments| for other flags and
" comment strings.
setlocal comments=:#

" Template for a comment. "%s" is replaced by the commented text.
setlocal commentstring=#\ %s
