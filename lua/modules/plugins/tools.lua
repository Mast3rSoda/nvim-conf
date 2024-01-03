return {{
    'nvim-telescope/telescope.nvim',
    lazy = false,
    cmd = "Telescope",
    module = 'telescope',
    config = require("modules.configs.tools.telescope"),
    dependencies = {'nvim-lua/plenary.nvim'}
}}
