scriptencoding utf-8

if exists("g:formattedTitle_loaded")
  finish
endif

let g:formattedTitle_loaded = 1
let g:formattedTitle_char = get(g:, "formattedTitle_char", "-")
let g:formattedTitle_title_len = get(g:, "formattedTitle_title_len", 20)

command! -nargs=1 FormattedTitle call formattedTitle#InsertTitle(<q-args>)
