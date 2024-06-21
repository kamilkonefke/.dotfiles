local lsp = require('lsp-zero')

-- Setup language servers
require'lspconfig'.rust_analyzer.setup{}
require'lspconfig'.lua_ls.setup{}
require'lspconfig'.clangd.setup{}

-- Keybinds
local cmp = require('cmp')
cmp.setup({
  mapping = {
    ['<Tab>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 's' }),
    ['<S-Tab>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 's' }),
    ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
    ['<C-y>'] = cmp.config.disable,
    ['<C-e>'] = cmp.mapping({ i = cmp.mapping.abort(), c = cmp.mapping.close()}),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  },
})

lsp.set_preferences({
    sign_icons = { }
})

lsp.setup()
