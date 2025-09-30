return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("lspconfig").basedpyright.setup({
        settings = {
          python = {
            analysis = {
              typeCheckingMode = "basic",
              diagnosticMode = "openFilesOnly",
              autoSearchPaths = true,
              useLibraryCodeForTypes = true,
            },
          },
        },
      })
    end,
  },
}
