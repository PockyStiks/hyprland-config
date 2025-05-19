vim.opt.tabstop = 4       -- How many spaces a <Tab> counts for
vim.opt.shiftwidth = 4    -- How many spaces to use for auto-indent
vim.opt.expandtab = true  -- Convert tabs to spaces
vim.opt.clipboard = "unnamedplus" -- Yanks text to system register
vim.opt.number = true        -- Show absolute line numbers
vim.opt.relativenumber = false -- Show relative line numbers
vim.o.scrolloff = 5
vim.opt.termguicolors = true

vim.diagnostic.config({
    virtual_text = true,  -- show inline
    signs = true,
    underline = true,
    update_in_insert = false,
    severity_sort = true,
})

require("config_lazy")

-- open terminal in current dir
vim.keymap.set("n", "<leader>t", function()
    local file_dir = vim.fn.fnamemodify(vim.fn.expand("%:p"), ":h")
    local cmd

    cmd = "alacritty --working-directory " .. vim.fn.shellescape(file_dir)

    os.execute(cmd .. " &")
end, { desc = "Open external terminal in file's directory" })

