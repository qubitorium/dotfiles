vim.keymap.set('n', '<leader>o', ':update<cr> :source %<cr>', {desc = 'update and source current file'}) 
vim.keymap.set('n', '<leader>w', ':write<cr>', {desc = 'save file'})
vim.keymap.set('n', '<leader>q', ':quit<cr>', {desc = 'quit'})
vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format)
vim.keymap.set('n', '<leader>f', ":Pick files<cr>")
vim.keymap.set('n', '<leader>e', ":Oil<cr>")

--copy paste system
vim.keymap.set('n', "p", "\"+p")
vim.keymap.set('n', "yy", "\"+yy")
vim.keymap.set('n', "y", "\"+y")


-- Define once
local on_attach = function(client, bufnr)
  local opts = { buffer = bufnr, silent = true }

  -- Hover docs
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
  -- Go to definition
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
  -- Go to declaration
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
  -- References
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
  -- Rename symbol
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
  -- Code actions
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)
  -- Signature help
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
end
