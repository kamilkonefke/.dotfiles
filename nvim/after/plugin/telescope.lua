local builtin = require('telescope.builtin')
vim.keymap.set('n', '<Space>f', builtin.find_files, {})
vim.keymap.set('n', '<Space>ps', function() 
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
