" ~~~~~~ EasyAlign ~~~~~~ "
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Custom alignments
let g:easy_align_delimiters = {
\ '(': { 'pattern': '(', 'left_margin': 1, 'right_margin': 0, 'stick_to_left': 0 },
\ '[': { 'pattern': '[', 'left_margin': 1, 'right_margin': 0, 'stick_to_left': 0 },
\ '/': { 'pattern': '//', 'left_margin': 1, 'right_margin': 1, 'stick_to_left': 0 }
\ }


" Allow alignment on / for comments
" let g:easy_align_delimiters = {
" \ '/': { 'pattern': '//', 'left_margin': 1, 'right_margin': 1, 'stick_to_left': 0 }
" \ }
