THEME = "catppuccin"

require(THEME).setup({
    flavour = "mocha",
    transparent_background = true,
    styles = {
        italic = false,
    },
})

function ColorMyPencils(color) 
	color = color or THEME
	vim.cmd.colorscheme(color)

	-- Transparent bg
	vim.api.nvim_set_hl(0, "Normal", { bg = "none"} )
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none"} )
end

ColorMyPencils()
