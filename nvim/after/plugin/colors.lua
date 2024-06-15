require("nightfox").setup({
    variant = "main",
    styles = {
        italic = false,
    }
})

function ColorMyPencils(color) 
	color = color or "nightfox"
	vim.cmd.colorscheme(color)

	-- Transparent bg
	vim.api.nvim_set_hl(0, "Normal", { bg = "none"} )
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none"} )
end

ColorMyPencils()
