scriptencoding utf-8

function! formattedTitle#GetTitle(title) abort
  if strlen(a:title) + 2 > g:formattedTitle_title_len
    return a:title
  endif

  let s:deco_len = g:formattedTitle_title_len - (strlen(a:title) + 2)
  let s:deco_rlen = float2nr(ceil(s:deco_len / 2.0))
  let s:deco_llen = float2nr(floor(s:deco_len / 2.0))
  let s:formatted_title = repeat(g:formattedTitle_char, s:deco_llen) . " " . a:title . " " . repeat(g:formattedTitle_char, s:deco_rlen)
  return  s:formatted_title
endfunction

function! formattedTitle#InsertTitle(title) abort
  execute ":normal i" . formattedTitle#GetTitle(a:title)
endfunction
