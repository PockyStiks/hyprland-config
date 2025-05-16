return {
    { "folke/which-key.nvim", event = "BufWinEnter" },
    { "numToStr/Comment.nvim", event = "BufRead" },
    { "lukas-reineke/indent-blankline.nvim", event = "BufRead" },
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true
        -- use opts = {} for passing setup options
        -- this is equivalent to setup({}) function
    }
}
