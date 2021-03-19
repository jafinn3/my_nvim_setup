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
nnoremap <Leader>b :ls<CR>:b<Space>

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Delete excess whitespace
nnoremap <silent> <F5> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>

" Source init.vim with <Leader>o
nnoremap <Leader>o :source $MYVIMRC<cr>

" Custom movements
" 'inner next parenthesis'
:onoremap in( :<c-u>normal! f(vi(<cr>
" 'around next parenthesis'
:onoremap an( :<c-u>normal! f(va(<cr>
