function ColorMyPencils(color)
	color = color or "gruvbox"
	vim.o.background = "dark" -- or "light" for light mode
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "Float", { bg = "none" })
end

ColorMyPencils()