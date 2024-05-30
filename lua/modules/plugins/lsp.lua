return {
    {
        'williamboman/mason.nvim',
        config = require("modules.configs.lsp.mason")
    },
    {
        'williamboman/mason-lspconfig.nvim',
        config = require("modules.configs.lsp.mason-lspconfig")
    },
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        config = require("modules.configs.lsp.lsp-z"),
        dependencies = {
            'neovim/nvim-lspconfig'
        },
    },
    {
        'hrsh7th/nvim-cmp',
        config = require("modules.configs.lsp.cmp"),
        dependencies =
        {
            "onsails/lspkind.nvim",
            "saadparwaiz1/cmp_luasnip",
            'hrsh7th/cmp-nvim-lsp'
        },
        -- event = "InsertEnter",
        event = "VeryLazy",
    },
    {
        'L3MON4D3/LuaSnip',
        event = "VeryLazy",
        config = require("modules.configs.lsp.luasnip"),
        dependencies = { "rafamadriz/friendly-snippets" },
        lazy = true
    },
    {
        "danymat/neogen",
        event = "VeryLazy",
        dependencies = "nvim-treesitter/nvim-treesitter",
        config = true,
        -- Uncomment next line if you want to follow only stable versions
        -- version = "*"
    },
    -- { "dense-analysis/ale",
    --     config = function()

    --     end }

    {
        "ray-x/lsp_signature.nvim",
        event = "VeryLazy",
        config = require("modules.configs.lsp.lsp_signature"),
    },
}
