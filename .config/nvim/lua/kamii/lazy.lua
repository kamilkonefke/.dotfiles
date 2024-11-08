local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
    {'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'},
    {'windwp/nvim-autopairs'},
    {'nvim-lualine/lualine.nvim', dependencies = {'nvim-tree/nvim-web-devicons'}},

    -- Themes
    {'ellisonleao/gruvbox.nvim'},

    -- Lsp
    {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
    {'neovim/nvim-lspconfig'},
    {'ray-x/lsp_signature.nvim'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/nvim-cmp'},
    {'L3MON4D3/LuaSnip'},
    {'windwp/nvim-ts-autotag'},
    
    -- Telescope
    {'nvim-telescope/telescope.nvim', tag = '0.1.6', dependencies = { 'nvim-lua/plenary.nvim' }},
}

local opts = {}

require("lazy").setup(plugins, opts)
