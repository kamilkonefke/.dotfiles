require('rose-pine').setup{
    variant = 'moon',
    styles = {
        italic = false,
    }
}

function ColorMyPencils(color)
	vim.cmd.colorscheme(color)

	-- Transparent bg
	-- vim.api.nvim_set_hl(0, "Normal", { bg = "none"} )
	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none"} )
end

ColorMyPencils('rose-pine')
