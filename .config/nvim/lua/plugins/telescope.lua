return {
    {
        "nvim-telescope/telescope.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
        },
        
        keys = {
            { "<leader>ff", function() require("telescope.builtin").find_files() end, desc = "Find files" },
            { "<leader>fg", function() require("telescope.builtin").live_grep() end, desc = "Live grep" },
            { "<leader>fb", function() require("telescope.builtin").buffers() end, desc = "List buffers" },
            { "<leader>fh", function() require("telescope.builtin").help_tags() end, desc = "Help tags" },
        },
            
        config = function()
            require("telescope").setup {
                extensions = {
                    fzf = {
                        fuzzy = true,
                        override_generic_sorter = true,
                        override_file_sorter = true,
                        case_mode = "smart_case",
                    },
                },
                pickers = {
                    find_files = {
                        hidden = true,
                        no_ignore = true,
                    }
                }
            }
            require("telescope").load_extension("fzf")
        end,
    }
}
