return function()
    require("nvim-tree").setup {
        sort = {
            sorter = "case_sensitive"
        },
        view = {
            width = 30
        },
        renderer = {
            group_empty = true
        },
        filters = {
            dotfiles = true
        }
    }

    -- disable netrw at the very start of your init.lua
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    local api = require "nvim-tree.api"
    vim.keymap.set("n", "<leader>tt", function()
        api.tree.toggle()
    end)
    vim.keymap.set("n", "<leader>tf", function()
        api.tree.focus()
    end)
    vim.keymap.set("n", "<leader>tp", function()
        api.tree.change_root_to_parent(api.tree.get_node_under_cursor())
    end)
    vim.keymap.set("n", "<leader>tn", function()
        api.tree.change_root_to_node(api.tree.get_node_under_cursor())
    end)
end
