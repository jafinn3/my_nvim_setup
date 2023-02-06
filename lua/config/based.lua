local based = require("based")

-- Not necessary if you don't want to override any defaults.
-- `:help based` for information on configuration keys
based.setup({
    highlight = "MyHighlightGroup"
})

vim.api.nvim_set_keymap('n', '<C-c>', ':lua require(\'based\').convert()<CR>', { noremap = true })
vim.api.nvim_set_keymap('n' , '<C-c>h', ':lua require(\'based\').convert(\'hex\')<CR>', { noremap = true, silent = true }) -- Convert from hex
vim.api.nvim_set_keymap('n' , '<C-c>d', ':lua require(\'based\').convert(\'dec\')<CR>' , { noremap = true, silent = true }) -- Convert from decimal
