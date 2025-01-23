vim.keymap.set({'n', 'x', 'o'}, 't',  '<Plug>(leap-forward)')
vim.keymap.set({'n', 'x', 'o'}, 'T',  '<Plug>(leap-backward)')
vim.keymap.set({'n', 'x', 'o'}, '<leader>t', '<Plug>(leap-from-window)')
require('leap').opts.safe_labels = 'rstnohpgmfuyklxqzvbj'
-- require('leap').opts.labels = 'arstneiodhpgmfwuycklxqzvbj'

