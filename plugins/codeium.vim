source $HOME/.config/nvim/plugins/codeium_auth

" Map Ctrl-space to accept
let g:codeium_no_map_tab = 1
imap <script><silent><nowait><expr> <C-space> codeium#Accept()
imap <script><silent><nowait><expr> <C-0> codeium#CycleCompletions(1)
imap <script><silent><nowait><expr> <C-9> codeium#CycleCompletions(-1)
