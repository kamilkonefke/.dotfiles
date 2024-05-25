local lsp = require('lsp-zero')

-- Setup rust analzyer
require'lspconfig'.rust_analyzer.setup{}

-- Keybinds
local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-Space>'] = cmp.mapping.confirm({ select = true }),
})

lsp.setup()
