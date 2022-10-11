let g:airline#extensions#tabline#enabled=0
let g:airline#extensions#tabline#left_sep=' '
let g:airline#extensions#tabline#left_alt_sep='|'
let g:airline#extensions#tabline#formatter='unique_tail'
let g:airline_powerline_fonts = 1
" let g:airline_theme='onehalfdark'

scriptencoding utf-8

if !get(g:, 'loaded_gutentags', 0)
  finish
endif

function! airline#extensions#gutentags#status()
  let msg = gutentags#statusline()
  return empty(msg) ? '' :  'Gen. ' . msg
endfunction

function! airline#extensions#gutentags#init(ext)
  call airline#parts#define_function('gutentags', 'airline#extensions#gutentags#status')
endfunction
