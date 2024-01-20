return function()
    local cmp = require('cmp')
    local cmp_action = require('lsp-zero').cmp_action()

    cmp.setup({
        
        sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
    }),

        mapping = cmp.mapping.preset.insert({
            -- `Enter` key to confirm completion
            ['<TAB>'] = cmp.mapping.confirm({
                select = true
            }),

            -- Ctrl+Space to trigger completion menu
            ['<leader>h'] = cmp.mapping.complete(),

            -- Navigate between snippet placeholder
            ['<C-f>'] = cmp_action.luasnip_jump_forward(),
            ['<C-b>'] = cmp_action.luasnip_jump_backward(),

            -- Scroll up and down in the completion documentation
            ['<C-u>'] = cmp.mapping.scroll_docs(-4),
            ['<C-d>'] = cmp.mapping.scroll_docs(4),


        }),
    })
end
