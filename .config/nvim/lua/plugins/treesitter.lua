return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = function()
      vim.cmd("TSUpdate")
    end,
    event = { "BufReadPre", "BufNewFile" },
    opts = {
      ensure_installed = {
        "c", "cpp", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "python"
      },
      highlight = { enable = true },
      indent = { enable = true },
    },
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)
    end,
  }
}

