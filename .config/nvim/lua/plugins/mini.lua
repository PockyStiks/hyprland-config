return {
    {
        'echasnovski/mini.nvim',
        version = false,

        config = function()
            require("mini.ai").setup()
            require("mini.surround").setup()
            require("mini.comment").setup()
            require("mini.pairs").setup()
            require("mini.splitjoin").setup()
            require("mini.move").setup()
            require("mini.jump").setup()
            require("mini.statusline").setup()
            require("mini.cursorword").setup()
        end
    }
}
