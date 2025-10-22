return {
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            local util = require("lspconfig.util")

            -- Python
            lspconfig.basedpyright.setup({
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

            -- C / C++
            lspconfig.clangd.setup({
                cmd = { "clangd", "--background-index" },
                filetypes = { "c", "cpp", "objc", "objcpp", "cuda" },
                single_file_support = true,
            })

            -- Emmet
            lspconfig.emmet_language_server.setup({
                cmd = { "emmet-language-server", "--stdio" },
                filetypes = {
                    "astro",
                    "css",
                    "eruby",
                    "html",
                    "htmlangular",
                    "htmldjango",
                    "javascriptreact",
                    "less",
                    "pug",
                    "sass",
                    "scss",
                    "svelte",
                    "templ",
                    "typescriptreact",
                    "vue",
                },
                root_dir = function(fname)
                    -- starts with searching for git or file directory or cwd
                    return util.find_git_ancestor(fname) or util.path.dirname(fname) or vim.loop.cwd()
                end,
                single_file_support = true,
                init_options = {
                    includeLanguages = {},
                    excludeLanguages = {},
                    extensionsPath = {},
                    preferences = {},
                    showAbbreviationSuggestions = true,
                    showExpandedAbbreviation = "always",
                    showSuggestionsAsSnippets = false,
                    syntaxProfiles = {},
                    variables = {},
                },
            })
        end,
    },
}
