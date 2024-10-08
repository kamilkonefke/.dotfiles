local lsp = require('lsp-zero')

-- Setup language servers
require'lspconfig'.rust_analyzer.setup{} -- install via cargo install rust-analyzer
require'lspconfig'.clangd.setup{} -- yay -S llvm
require'lspconfig'.glsl_analyzer.setup{} -- install from github repo glsl_anaylzer
require'lspconfig'.gopls.setup{} -- yay -S gopls
-- require'lspconfig'.astro.setup{} -- npm install -g @astrojs/language-server
-- require'lspconfig'.lua_ls.setup{} -- install via yay -S lua_language_server
-- yay -S vscode-langservers-extracted
-- require'lspconfig'.html.setup{}
-- require'lspconfig'.cssls.setup{}
-- require'lspconfig'.jsonls.setup{} 
-- require'lspconfig'.tsserver.setup{} -- yay -S typescript_language_server

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
    handler_opts = {
        border = "none",
    }
})

lsp.setup()
