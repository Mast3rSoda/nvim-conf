return {
{'williamboman/mason.nvim', config = require("modules.configs.lsp.mason")},
{'williamboman/mason-lspconfig.nvim', config = require("modules.configs.lsp.mason-lspconfig")},
{'VonHeikemen/lsp-zero.nvim', branch = 'v3.x', config = require("modules.configs.lsp.lsp-z")},
{'neovim/nvim-lspconfig'},
{'hrsh7th/cmp-nvim-lsp'},
{'hrsh7th/nvim-cmp', config = require("modules.configs.lsp.cmp")},
{'L3MON4D3/LuaSnip'},


}