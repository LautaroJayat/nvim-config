local lsp = require('lsp-zero')

lsp.preset('recommended').on_attach(function(client, bufnr)
        -- see :help lsp-zero-keybindings
        -- to learn the available actions
        lsp.default_keymaps({ buffer = bufnr })
end)

lsp.ensure_installed({
        'tsserver',
        'eslint',
        'gopls',

})

lsp.set_preferences({
})

lsp.format_on_save({
        format_opts = {
                async = false,
                timeout_ms = 10000,
        },
        servers = {
                ['lua_ls'] = { 'lua' },
                ['rust_analyzer'] = { 'rust' },
                ['gopls'] = { 'go' }
                -- if you have a working setup with null-ls
                -- you can specify filetypes it can format.
                -- ['null-ls'] = {'javascript', 'typescript'},
        }
})

lsp.on_attach(function(client, bufnr)
        lsp.default_keymaps({ buffer = bufnr })
        local opts = { buffer = bufnr }

        vim.keymap.set({ 'n', 'x' }, '<C-f>', function()
                vim.lsp.buf.format({ async = false, timeout_ms = 10000 })
        end, opts)
end)

lsp.setup()
