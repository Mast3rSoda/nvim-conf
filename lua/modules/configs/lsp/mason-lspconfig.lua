return function()
    require("mason-lspconfig").setup({
        ensure_installed = { "clangd", "omnisharp_mono", "gopls", "lua_ls" },
        handlers = {
            require("lsp-zero").default_setup,
        }
    })
end
