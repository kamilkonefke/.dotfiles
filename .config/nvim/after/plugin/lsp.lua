local lsp = require('lsp-zero')
-- Setup language servers
require'lspconfig'.rust_analyzer.setup{} -- install via cargo install rust-analyzer
require'lspconfig'.clangd.setup{} -- llvm
require'lspconfig'.gopls.setup{} -- gopls
-- require'lspconfig'.ts_ls.setup{} -- yay -S typescript_language_server
-- require'lspconfig'.pyright.setup{}
-- require'lspconfig'.html.setup{}
-- require'lspconfig'.cssls.setup{}
-- require'lspconfig'.zls.setup{}
-- require'lspconfig'.wgsl_analyzer.setup{}
-- require'lspconfig'.astro.setup{} -- npm install -g @astrojs/language-server
-- require'lspconfig'.lua_ls.setup{} -- install via yay -S lua_language_server

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

require'lsp_signature'.setup({
    warp = false,
    hint_enable = false,
    max_width = 48,
    max_height = 4,
    handler_opts = {
        border = "none",
    },
})
lsp.setup()
