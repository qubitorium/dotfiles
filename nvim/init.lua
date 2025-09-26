require("configs")
require("keymaps")
require("plugins")

vim.cmd("colorscheme vague")
vim.cmd(":hi statusline guibg=NONE")


--lsp config, may transfer it to its own file if it gets too big

-- gotta download the lsp beforehand
vim.lsp.enable({"clangd"})
vim.lsp.enable({"lua_ls"})

require "mini.pick".setup()
require "oil".setup()

-- auto complete
vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(ev)
    local client = vim.lsp.get_client_by_id(ev.data.client_id)
    if client:supports_method('textDocument/completion') then
    vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
    end
    end,
})
vim.cmd("set completeopt+=noselect")



vim.lsp.config("clangd", { on_attach = on_attach, capabilities = caps })
vim.lsp.config("lua_ls", { on_attach = on_attach, capabilities = caps })
