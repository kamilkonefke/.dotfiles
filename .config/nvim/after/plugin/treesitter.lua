require'nvim-treesitter.configs'.setup {
  ensure_installed = { "rust", "c", "cpp", "lua", "vim", "vimdoc", "query", "markdown"},
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
