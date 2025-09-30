return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = false, -- disable default pyright
        basedpyright = {
          settings = {
            basedpyright = {
              analysis = {
                typeCheckingMode = "basic", -- "off" | "basic" | "strict"
                diagnosticMode = "openFilesOnly",
                autoSearchPaths = true,
                useLibraryCodeForTypes = true,
              },
            },
          },
        },
      },
    },
  },
}
