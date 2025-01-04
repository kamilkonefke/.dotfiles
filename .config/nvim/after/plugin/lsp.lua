local lsp = require('lsp-zero')
-- Setup language servers
local lspconfig = require('lspconfig')
lspconfig.clangd.setup{}
lspconfig.rust_analyzer.setup{}
lspconfig.gopls.setup{}

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

require'lsp_signature'.setup({
	warp = false,
	hint_enable = false,
	handler_opts = {
		border = "none",
	}
})
