require("bufferline").setup{
    options = {
        separator_style = "slant",
        hover = {
            enabled = true,
            delay = 200,
            reveal = {'close'}
        },
        buffer_close_icon = '',
        show_buffer_close_icons = true,
        diagnostics = "coc",

        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",
                highlight = "Directory",
                separator = true -- use a "true" to enable the default, or set your own character
            }
        },
        tab_size = 36,
        max_name_length = 36
    }
}


