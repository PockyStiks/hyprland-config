return {
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        lazy = false,
        dependencies = { "nvim-tree/nvim-web-devicons" },
        
        keys = {
            {
                "<leader>e",
                "<cmd>NvimTreeToggle<CR>",
                desc = "Toggle file tree",
            },

            {
                "<leader>w",
                function()
                    local api = require("nvim-tree.api")
                    local view = require("nvim-tree.view")
                    if view.is_visible() then
                        local tree_win = view.get_winnr()
                        local current_win = vim.api.nvim_get_current_win()
                        if current_win == tree_win then
                            vim.cmd("wincmd l")
                        else
                            api.tree.focus()
                        end
                    else
                        api.tree.open()
                    end
                end,
                desc = "Toggle focus NvimTree",
            },
        },
        
        config = function()
            require("nvim-tree").setup({})

            -- Auto-quit when NvimTree is the last window
            -- vim.api.nvim_create_autocmd("BufEnter", {
            --     nested = true,
            --     callback = function()
            --         if
            --             #vim.api.nvim_list_wins() == 1
            --             and vim.bo.filetype == "NvimTree"
            --         then
            --             vim.cmd("quit")
            --         end
            --     end,
            -- })
        end,
    }
}
