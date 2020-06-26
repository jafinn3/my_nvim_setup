" ~~~~~~ EasyAlign ~~~~~~ "
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
" Allow alignment on ( for SystemVerilog pin declarations
let g:easy_align_delimiters = {
\ '(': { 'pattern': '(', 'left_margin': 2, 'right_margin': 0, 'stick_to_left': 0 }
\ }

