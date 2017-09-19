autocmd BufNewFile,BufRead *.dp call s:setf('dope')
autocmd BufRead,BufNewFile * call s:DetectDope()

augroup dopefiletype
  autocmd FileType dope setl shiftwidth=2 softtabstop=2 expandtab
augroup END

function! s:setf(filetype) abort
  let &filetype = a:filetype
endfunction

" Detect files with the Dope shebang.
function! s:DetectDope()
  if getline(1) =~ '^#!.*\<dope\>'
    call s:setf('dope')
  endif
endfunction
