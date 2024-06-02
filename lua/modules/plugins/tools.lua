return { -- Telescope
    {
        'nvim-telescope/telescope.nvim',
        lazy = false,
        cmd = "Telescope",
        module = 'telescope',
        config = require("modules.configs.tools.telescope"),
        dependencies = {
            'nvim-lua/plenary.nvim',
            'BurntSushi/ripgrep'
            -- "nvim-tree/nvim-web-devicons"
        }
    },
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = require("modules.configs.tools.treesitter")
    },
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = {
            "nvim-telescope/telescope.nvim",
            "nvim-lua/plenary.nvim",
        },
        config = require("modules.configs.tools.harpoon")
    },
    {
        "lewis6991/gitsigns.nvim",
        event = "VeryLazy",
        config = require("modules.configs.tools.gitsigns"),
    },
    {
        "tpope/vim-fugitive"
    },
    {
        "akinsho/bufferline.nvim",
        version = "*",
        dependencies = {
            "nvim-tree/nvim-web-devicons"
        },
        event = "VeryLazy",
        config = require("modules.configs.tools.bufferline")
    },
    {
        "tiagovla/scope.nvim",
        lazy = false,
        config = require("modules.configs.tools.scope")
    },
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = {} -- this is equalent to setup({}) function
    },
    {
        "numToStr/Comment.nvim",
        config = require("modules.configs.tools.comment"),
        event = "BufEnter"
    },
    {
        "danymat/neogen",
        dependencies = "nvim-treesitter/nvim-treesitter",
        config = require("modules.configs.tools.neogen"),
    },
    {
        'echasnovski/mini.bufremove',
        version = '*',
        config = require("modules.configs.tools.bufremove"),
    },
    -- {
    --     'nvimdev/lspsaga.nvim',
    --     config = function()
    --         require("modules.configs.tools.lspsaga")
    --     end,
    --     dependencies = {
    --         'nvim-treesitter/nvim-treesitter', -- optional
    --         'nvim-tree/nvim-web-devicons', -- optional
    --     }
    -- },
}
