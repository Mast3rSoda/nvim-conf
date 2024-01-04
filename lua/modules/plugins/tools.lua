return {
    -- Telescope
    {
    'nvim-telescope/telescope.nvim',
    lazy = false,
    cmd = "Telescope",
    module = 'telescope',
    config = require("modules.configs.tools.telescope"),
    dependencies = { 'nvim-lua/plenary.nvim',
}},
    -- RipGrep
{
    'BurntSushi/ripgrep'
},
    -- TreeSitter
{
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = require("modules.configs.tools.treesitter")
 }
}
