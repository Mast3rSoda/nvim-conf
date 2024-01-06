return function()
    local lsp_zero = require("lsp-zero")
    require("mason-lspconfig").setup({
         ensure_installed = { "clangd", "omnisharp_mono", "gopls", "lua_ls" },
         handlers = { lsp_zero.default_setup }
    })
end