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
        dependencies = {
            'neovim/nvim-lspconfig'
        },
        config = require("modules.configs.lsp.lsp-z"),
    },
    {
        'hrsh7th/nvim-cmp',
        event = "BufAdd",
        dependencies =
        {
            "onsails/lspkind.nvim",
            "saadparwaiz1/cmp_luasnip",
            'hrsh7th/cmp-nvim-lsp'
        },
        config = require("modules.configs.lsp.cmp"),
    },
    {
        'L3MON4D3/LuaSnip',
        event = "BufAdd",
        dependencies = { "rafamadriz/friendly-snippets" },
        config = require("modules.configs.lsp.luasnip"),
    },
    {
        "ray-x/lsp_signature.nvim",
        event = "InsertEnter",
        config = require("modules.configs.lsp.lsp_signature"),
    },
}
