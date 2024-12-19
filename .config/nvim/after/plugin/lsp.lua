local lsp = require('lsp-zero')
-- Setup language servers
require'lspconfig'.rust_analyzer.setup{}
require'lspconfig'.clangd.setup{}
require'lspconfig'.gopls.setup{}

-- Keybinds
local cmp = require('cmp')
cmp.setup({
    mapping = {
        ['<C-n>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 's' }),
        ['<C-p>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 's' }),
        ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
        ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    },
})

lsp.set_preferences({
    sign_icons = { }
})

lsp.setup()
