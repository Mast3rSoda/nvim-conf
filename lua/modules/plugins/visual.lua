return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = require("modules.configs.visual.catpuccin"),
        enabled = false
    },
    {
        "EdenEast/nightfox.nvim",
        name = "nightfox",
        priority = 1000,
        config = require("modules.configs.visual.nightfox")

    },
    { "dstein64/nvim-scrollview" },
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        lazy = false,
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        config = require("modules.configs.visual.nvimtree"),
    },
    {
        'nvim-lualine/lualine.nvim',
        config = require("modules.configs.visual.lualine"),
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },
    {
        "folke/trouble.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = require("modules.configs.visual.trouble")
    },
    {
        "onsails/lspkind.nvim",
        lazy = true,
        config = require("modules.configs.visual.lsp-kind")
    },
    {
        "nvim-tree/nvim-web-devicons",
        lazy = true,
        config = require("modules.configs.visual.webdevicons")
    }

}
