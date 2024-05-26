require'nvim-treesitter.configs'.setup {
  ensure_installed = { "rust", "c", "cpp", "lua", "vim", "vimdoc", "query" },

  highlight = {
    enable = true,

    additional_vim_regex_highlighting = false,
  },
}
