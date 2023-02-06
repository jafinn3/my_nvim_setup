set fillchars+=diff:/

nnoremap <leader>do :DiffviewOpen -uno<CR>
nnoremap <leader>d  :DiffviewFileHistory<CR>
nnoremap <leader>df :DiffviewFileHistory % --follow<CR>
nnoremap <leader>dx :DiffviewClose<CR>
nnoremap <leader>dh :diffget //2<CR>
nnoremap <leader>dl :diffget //3<CR>
