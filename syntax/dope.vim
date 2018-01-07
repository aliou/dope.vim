" Quit when a (custom) syntax file was already loaded
if exists('b:current_syntax')
  finish
endif

let s:cpo_save = &cpoptions
set cpoptions&vim

let b:current_syntax = 'dope'

" Language keywords.
syntax keyword dopeKeyword import from fn
highlight link dopeKeyword Keyword

" Comments.
syntax match dopeComment "\v#.*$"
highlight link dopeComment Comment

" Operators
syntax match dopeOperator "\V->\?"
highlight def link dopeOperator Operator

let &cpoptions = s:cpo_save
unlet s:cpo_save
