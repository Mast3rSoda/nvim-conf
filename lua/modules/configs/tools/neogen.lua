return function()
    local neogen = require("neogen")

    vim.keymap.set({ "n", "i" }, "<Leader>ga", function()
        neogen.generate()
    end)
    neogen.setup({
        -- Enables Neogen capabilities
        enabled = true,

        -- Go to annotation after insertion, and change to insert mode
        input_after_comment = true,

        -- Configuration for default languages
        languages = {},

        -- Use a snippet engine to generate annotations.
        snippet_engine = "luasnip",

        -- Enables placeholders when inserting annotation
        enable_placeholders = true,

        -- Placeholders used during annotation expansion
        placeholders_text = {
            ["description"] = "[TODO:description]",
            ["tparam"] = "[TODO:tparam]",
            ["parameter"] = "[TODO:parameter]",
            ["return"] = "[TODO:return]",
            ["class"] = "[TODO:class]",
            ["throw"] = "[TODO:throw]",
            ["varargs"] = "[TODO:varargs]",
            ["type"] = "[TODO:type]",
            ["attribute"] = "[TODO:attribute]",
            ["args"] = "[TODO:args]",
            ["kwargs"] = "[TODO:kwargs]",
        },

        -- Placeholders highlights to use. If you don't want custom highlight, pass "None"
        placeholders_hl = "DiagnosticHint",
    })
end
