" Vim syntax file
" Language: Shell -- Extended for Bats (Bash Automated Testing System)

if exists("b:current_syntax")
  finish
endif

runtime! syntax/sh.vim
unlet! b:current_syntax

syn match batsTest              "\v\@test"
syn match batsTest              "load"
syn keyword batsKeyword run  containedin=shExpr contained

syn keyword batsKeyword assert_status           containedin=shExpr contained
syn keyword batsKeyword assert_success          containedin=shExpr contained
syn keyword batsKeyword assert_failure          containedin=shExpr contained
syn keyword batsKeyword assert_status           containedin=shExpr contained
syn keyword batsKeyword assert_equal            containedin=shExpr contained
syn keyword batsKeyword assert_fail_equal       containedin=shExpr contained
syn keyword batsKeyword assert_match            containedin=shExpr contained
syn keyword batsKeyword assert_fail_match       containedin=shExpr contained
syn keyword batsKeyword assert_lines_equal      containedin=shExpr contained
syn keyword batsKeyword assert_fail_lines_equal containedin=shExpr contained
syn keyword batsKeyword assert_lines_match      containedin=shExpr contained
syn keyword batsKeyword assert_fail_lines_match containedin=shExpr contained

hi def link batsTest            Identifier
hi def link batsKeyword         Keyword

let b:current_syntax = "bats"
