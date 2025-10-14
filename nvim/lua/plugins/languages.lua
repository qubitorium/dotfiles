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

            require("lspconfig").clangd.setup({
                cmd = { "clangd", "--background-index" },
                filetypes = { "c", "cpp", "objc", "objcpp", "cuda" },
                single_file_support = true,
            })
        end,
    },
}
