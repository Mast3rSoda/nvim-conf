local config = function()
    local color = require('nightfox.lib.color')
    local Shade = require("nightfox.lib.shade")
    require('nightfox').setup({
        options = {
            -- Compiled file's destination location
            compile_path = vim.fn.stdpath("cache") .. "/nightfox",
            compile_file_suffix = "_compiled", -- Compiled file suffix
            transparent = true,                -- Disable setting background
            terminal_colors = true,            -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
            dim_inactive = false,              -- Non focused panes set to alternative background
            module_default = true,             -- Default enable value for modules
            colorblind = {
                enable = false,                -- Enable colorblind support
                simulate_only = false,         -- Only show simulated colorblind colors and not diff shifted
                severity = {
                    protan = 0,                -- Severity [0,1] for protan (red)
                    deutan = 0,                -- Severity [0,1] for deutan (green)
                    tritan = 0,                -- Severity [0,1] for tritan (blue)
                },
            },
            styles = {               -- Style to be applied to different syntax groups
                comments = "italic", -- Value is any valid attr-list value `:help attr-list`
                conditionals = "italic",
                constants = "bold",
                functions = "NONE",
                keywords = "NONE",
                numbers = "NONE",
                operators = "NONE",
                strings = "NONE",
                types = "NONE",
                variables = "NONE",
            },
            inverse = { -- Inverse highlight for different types
                match_paren = false,
                visual = false,
                search = false,
            },
            modules = { -- List of various plugins and additional options
                -- ...
            },
        },
        palettes = {
            --maybe someday?
            -- duskfox = {
            --     comment = "#6272A4",
            --     bg0 = "#20152B",
            --     bg1 = "#221D38",
            --     bg2 = "#242623",
            --     bg3 = "#3D2E63",
            --     bg4 = "#654099",
            --     fg0 = "#F8F8F2",
            --     fg1 = "#BBBBBB",
            --     fg2 = "#B491E5",
            --     fg3 = "#8E856E",
            --     sel0 = "#4A021A",
            --     sel1 = "#7A032B",
            -- }
            nightfox = {
                -- black = Shade.new("#080305", "#6f475a", -0.15),
                red = Shade.new("#FF9B9B", 0.10, -0.15),
                green = Shade.new("#8FBFC7", "#698D92", -0.15),
                yellow = Shade.new("#D19F4C", "#E8B154", -0.15),
                blue = Shade.new("#AE4A7E", "#B7266B", -0.15),
                magenta = Shade.new("#981F59", "#CB4B72", -0.15),
                cyan = Shade.new("#C35087", "#DC5A98", -0.15),
                white = Shade.new("#BD819E", "#DAB6C7", -0.15),
                orange = Shade.new("#EBAE6F", "#EB8D2B", -0.15),
                pink = Shade.new("#0D4A5B", "#126B83", -0.15),
                comment = "#715E66",
                bg0 = "#000000",
                bg1 = "#080305",
                bg2 = "#230D16",
                bg3 = "#3C1626",
                bg4 = "#DDA3BB",
                fg0 = "#EBD0DC",
                fg1 = "#D0B8C3",
                fg2 = "#CCAABA",
                fg3 = "#AB7E93",
                sel0 = "#3A1021",
                sel1 = "#4E2B3C",
            }
        },
        specs = {
            -- duskfox = {
            --     syntax = {

            --     },
            --     git = {

            --     }
            -- }
        },
        groups = {},
    })

    -- setup must be called before loading
    vim.cmd("colorscheme nightfox")
end


return config
