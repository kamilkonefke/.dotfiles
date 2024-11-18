require('rose-pine').setup{
    disable_background = true,
}

function ColorMyPencils(color)
	vim.cmd.colorscheme(color)

	-- Transparent bg
	-- vim.api.nvim_set_hl(0, "Normal", { bg = "none"} )
	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none"} )
end

ColorMyPencils('rose-pine')
