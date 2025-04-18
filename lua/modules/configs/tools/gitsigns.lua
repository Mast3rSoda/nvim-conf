return function()
    require('gitsigns').setup {
        signs                           = {
            add = { text = "▎" },
            change = { text = "▎" },
            delete = { text = "" },
            topdelete = { text = "" },
            changedelete = { text = "▎" },
            untracked = { text = "▎" },
        },
        signs_staged                    = {
            add          = { text = "▎" },
            change       = { text = '▎' },
            delete       = { text = '' },
            topdelete    = { text = '' },
            changedelete = { text = '▎' },
            untracked    = { text = '▎' },
        },
        signs_staged_enable             = true,
        worktrees                       = nil,
        on_attach                       = nil,
        signcolumn                      = false, -- Toggle with `:Gitsigns toggle_signs`
        numhl                           = true,  -- Toggle with `:Gitsigns toggle_numhl`
        linehl                          = false, -- Toggle with `:Gitsigns toggle_linehl`
        word_diff                       = false, -- Toggle with `:Gitsigns toggle_word_diff`
        watch_gitdir                    = {
            follow_files = true
        },
        auto_attach                     = true,
        attach_to_untracked             = true,
        current_line_blame              = true, -- Toggle with `:Gitsigns toggle_current_line_blame`
        current_line_blame_opts         = {
            virt_text = true,
            virt_text_pos = 'right_align', -- 'eol' | 'overlay' | 'right_align'
            delay = 500,
            ignore_whitespace = true,
            virt_text_priority = 2,
            use_focus = true,
        },
        current_line_blame_formatter    = " <author>, <author_time:%d-%m-%Y> - <summary>      ",
        current_line_blame_formatter_nc = " <author>      ",
        sign_priority                   = 6,
        update_debounce                 = 100,
        status_formatter                = nil,   -- Use default
        max_file_length                 = 40000, -- Disable if file is longer than this (in lines)
        preview_config                  = {
            -- Options passed to nvim_open_win
            border = 'round',
            style = 'minimal',
            relative = 'cursor',
            row = 0,
            col = 1
        },
    }
end
