vim.opt.tabstop = 4       -- How many spaces a <Tab> counts for
vim.opt.shiftwidth = 4    -- How many spaces to use for auto-indent
vim.opt.expandtab = true  -- Convert tabs to spaces
vim.opt.clipboard = "unnamedplus" -- Yanks text to system register
vim.opt.number = true        -- Show absolute line numbers
vim.opt.relativenumber = false -- Show relative line numbers
vim.opt.guicursor = "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50" -- Fixes block cursor bug in alacrity

-- Set cursor to beam (shape 5) on VimEnter
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    io.write("\027[5 q")
  end,
})

-- Set cursor to beam again when leaving (terminal might reset it)
vim.api.nvim_create_autocmd("VimLeave", {
  callback = function()
    vim.fn.jobstart({ "sh", "-c", "echo -ne '\\033[5 q'" })
  end,
})

require("config_lazy")
