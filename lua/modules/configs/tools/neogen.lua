return function()
    local neogen = require("neogen")

    local opts = {
        noremap = true,
        silent = true
    }
    vim.keymap.set({"n", "i"}, "<Leader>ga", function()
        neogen.generate()
    end)
    neogen.setup({
        snippet_engine = "luasnip"
    })
end
