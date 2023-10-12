vim.g.loaded = 1
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup {
    view = {
        width = 45,
    },
    actions = {
        open_file = {
            resize_window = false
        }
    }
}
