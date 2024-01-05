local config = function()

    require("nvim-treesitter.configs").setup({
        ensure_installed = {"c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html", "go", "gomod", "gosum", "gowork", "c_sharp", "dockerfile", "python", "sql", "xml", "yaml"},
        sync_install = false,
        auto_install = true,
        highlight = {
            enable = true,
            additional_vim_regex_highlighting = false
        },
        indent = {
            enable = true
        }
    })
end

return config
