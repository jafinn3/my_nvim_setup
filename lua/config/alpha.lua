local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

-- Set header
dashboard.section.header.val = {
    "                                                     ",
    "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
    "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
    "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
    "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
    "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
    "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
    "                                                     ",
}

-- Set menu
dashboard.section.buttons.val = {
    dashboard.button( "e", "  > New file" , ":ene <BAR> startinsert <CR>"),
    dashboard.button( "f", "󰈞  > Find file", ":Files<CR>"),
    dashboard.button( "t", "󰊄  > Find text", ":Rg<CR>"),
    dashboard.button( "sd", "  > Git commit history", ":DiffviewFileHistory<CR>"),
    dashboard.button( "sdo", "  > Git diff", ":DiffviewOpen -uno<CR>"),
    dashboard.button( "i", "襁 > Install Plugins"   , ":PlugInstall<CR>"),
    dashboard.button( "u", "󰚰  > Update plugins"   , ":PlugUpdate<CR>"),
    dashboard.button( "c", "  > Clean plugins"   , ":PlugClean<CR>"),
    dashboard.button( "q", "󱎘  > Quit NVIM", ":qa<CR>"),
}

local fortune = require("alpha.fortune")
dashboard.section.footer.val = fortune()

-- Send config to alpha
alpha.setup(dashboard.opts)

-- Disable folding on alpha buffer
vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
]])

vim.api.nvim_create_autocmd("User", {
    pattern = "AlphaReady",
    callback = function()
        vim.cmd("IndentLinesDisable")
    end,
})

vim.api.nvim_create_autocmd("BufUnload", {
    pattern = "<buffer>",
    callback = function()
        vim.cmd("IndentLinesEnable")
    end,
})

