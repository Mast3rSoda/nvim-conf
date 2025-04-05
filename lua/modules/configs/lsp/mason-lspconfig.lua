return function()
    require("lsp-zero").extend_lspconfig()
    require("mason-lspconfig").setup({
        ensure_installed = { "clangd", "gopls", "lua_ls" },
        handlers = {
            function(server_name)
                require('lspconfig')[server_name].setup({})
            end,
        }
    })
end
