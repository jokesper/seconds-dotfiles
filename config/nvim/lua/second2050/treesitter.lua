require("nvim-treesitter.configs").setup({
    highlight = {
        enable = true,
        disable = {""},
        additional_vim_regex_highlighting = true,
    },
    indent = { enable = true },
    rainbow = {
        enable = true,
        max_file_lines = nil,
    }
})
