local opt = vim.opt

opt.number = true
opt.relativenumber = true
opt.expandtab = false
opt.tabstop = 4
opt.shiftwidth = 4
opt.ignorecase = true
opt.smartcase = true
opt.signcolumn = "yes"
opt.winborder = "rounded"
opt.clipboard = "unnamedplus"

vim.g.mapleader = " "

vim.keymap.set('n', 'K', function()
  vim.lsp.buf.hover({ border = "rounded", max_width = 80 })
end, { noremap = true, silent = true })

-- Show hover automatically when you hold the cursor
-- vim.api.nvim_create_autocmd("CursorHold", {
--   callback = function()
--     vim.lsp.buf.hover({ border = "rounded" })
--   end,
--   buffer = 0,
-- })
--
