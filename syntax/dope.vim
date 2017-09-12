" Quit when a (custom) syntax file was already loaded
if exists('b:current_syntax')
  finish
endif

let s:cpo_save = &cpo
set cpo&vim

let b:current_syntax = 'dope'

" Language keywords.
syntax keyword dopeKeyword import from
highlight link dopeKeyword Keyword

" Comments.
syntax match dopeComment "\v#.*$"
highlight link dopeComment Comment

let &cpo = s:cpo_save
unlet s:cpo_save
