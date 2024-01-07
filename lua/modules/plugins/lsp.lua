return {
{'williamboman/mason.nvim', config = require("modules.configs.lsp.mason")},
{'williamboman/mason-lspconfig.nvim', config = require("modules.configs.lsp.mason-lspconfig")},
{'VonHeikemen/lsp-zero.nvim', branch = 'v3.x', config = require("modules.configs.lsp.lsp-z")},
{'neovim/nvim-lspconfig'},
{'hrsh7th/cmp-nvim-lsp'},
{'hrsh7th/nvim-cmp', config = require("modules.configs.lsp.cmp")},
{'L3MON4D3/LuaSnip', config = require("modules.configs.lsp.luasnip"), dependencies = { "rafamadriz/friendly-snippets" }},
{"saadparwaiz1/cmp_luasnip"},
{ "rafamadriz/friendly-snippets" },
{ 
    "danymat/neogen", 
    dependencies = "nvim-treesitter/nvim-treesitter", 
    config = true,
    -- Uncomment next line if you want to follow only stable versions
    -- version = "*" 
},
-- { "dense-analysis/ale",
--     config = function()
        
--     end }

}