return {
    {
        "nvimdev/indentmini.nvim",
        config = function()
            require("indentmini").setup()
            vim.cmd.highlight('IndentLine guifg=#2B2B2B')
            vim.cmd.highlight('IndentLineCurrent guifg=#819597')
        end,
    }
}
