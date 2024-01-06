return function()
    local lsp_zero = require('lsp-zero')
    lsp_zero.extend_lspconfig()
    lsp_zero.on_attach(function(client, bufnr)
        -- see :help lsp-zero-keybindings
        -- to learn the available actions
        lsp_zero.default_keymaps({
            buffer = bufnr
        })

        lsp_zero.set_sign_icons({
            error = "󰅚",
            warn = "󰀪",
            info = "",
            hint = "󰌶"
        })

    end)
end