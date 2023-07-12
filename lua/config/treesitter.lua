require'nvim-treesitter.configs'.setup {
    ensure_installed = { "c", "lua", "vim", "query", "cpp" },

    sync_install = false,
    auto_install = true,

    highlight = {
        enable = false,
    },

    textobjects = {
        select = {
            enable = true,
            keymaps = {
                ["af"] = "@function.outer",
                ["if"] = "@function.inner",
                ["ac"] = "@class.outer",
                ["ic"] = "@class.inner",
            }
        }
    }
}

