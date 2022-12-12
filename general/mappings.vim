let mapleader = 's'

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" Remap escape to jj
inoremap jj <esc>
" inoremap <esc> <nop>

" <Leader>n in general mode will move to text buffer
nnoremap <Leader>n :bnext<CR>
" <Leader>N will go back
nnoremap <Leader>N :bprevious<CR>
" <Leader>b will show all open buffers
nnoremap <Leader>bo :ls<CR>:b<Space>
" Close buffers correctly
nmap <silent> <Leader>bd :bp\|bd #<CR>

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
function Splitresize()
    let hmax = max([winwidth(0), float2nr(&columns*0.66), 90])
    let vmax = max([winheight(0), float2nr(&lines*0.66), 25])
    exe "vertical resize" . (min([hmax, 140]))
    exe "resize" . (min([vmax, 60]))
endfunction

nnoremap <C-h> <C-w>h :call Splitresize()<CR>
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Delete excess whitespace
autocmd BufWritePre * :%s/\s\+$//e

" Source init.vim with <Leader>o
nnoremap <Leader>o :source $MYVIMRC<cr>

" Custom movements
" 'inner next parenthesis'
:onoremap in( :<c-u>normal! f(vi(<cr>
" 'around next parenthesis'
:onoremap an( :<c-u>normal! f(va(<cr>
