return {
    -- LSP installer
    {
        "williamboman/mason.nvim",
        config = true,
    },

    -- Bridge Mason and LSPConfig
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "clangd", "pyright", "lua_ls" },
                automatic_installation = true,
            })
        end,
    },

    -- LSP configuration
    {
        "neovim/nvim-lspconfig",
        dependecies = {
            { 'saghen/blink.cmp' },
            {
                "folke/lazydev.nvim",
                ft = "lua", -- only load on lua files
                opts = {
                    library = {
                        -- See the configuration section for more details
                        -- Load luvit types when the `vim.uv` word is found
                        { path = "${3rd}/luv/library", words = { "vim%.uv" } },
                    },
                },
            },
        },
        config = function()
            local lspconfig = require("lspconfig")
            local capabilities = require('blink.cmp').get_lsp_capabilities()

            -- Language server setups
            lspconfig.clangd.setup({ capabilities = capabilities })
            lspconfig.pyright.setup({ capabilities = capabilities })
            lspconfig.lua_ls.setup({ capabilities = capabilities })
        end,
    }
}
