return { -- Telescope
{
    'nvim-telescope/telescope.nvim',
    lazy = false,
    cmd = "Telescope",
    module = 'telescope',
    config = require("modules.configs.tools.telescope"),
    dependencies = {'nvim-lua/plenary.nvim', "nvim-tree/nvim-web-devicons"}
}, -- RipGrep
{'BurntSushi/ripgrep'}, -- TreeSitter
{
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = require("modules.configs.tools.treesitter")
}, 
{
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = {"nvim-lua/plenary.nvim"},
    config = require("modules.configs.tools.harpoon")
}, 
{"ThePrimeagen/git-worktree.nvim"}, {
    "lewis6991/gitsigns.nvim",
    config = require("modules.configs.tools.gitsigns")
}, 
{"tpope/vim-fugitive"},
{
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = require("modules.configs.tools.bufferline")
},
{ "tiagovla/scope.nvim",
    config =  require("modules.configs.tools.scope")}
}
