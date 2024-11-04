vim.g.mapleader = " "
vim.keymap.set("n", "<leader>ff", vim.cmd.Ex)

local modes = {'n', 'i', 'v', 'c', 't'}

for _, mode in ipairs(modes) do
    vim.api.nvim_set_keymap(mode, '<Up>', '<nop>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap(mode, '<Down>', '<nop>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap(mode, '<Left>', '<nop>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap(mode, '<Right>', '<nop>', { noremap = true, silent = true })
end
