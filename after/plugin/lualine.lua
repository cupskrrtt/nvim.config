local status, lualine = pcall(require, "lualine")
if not status then
	return
end

lualine.setup({
	options = {
		icons_enabled = true,
		theme = "kanagawa",
	},
	sections = {
		lualine_a = { "mode", "branch" },
		lualine_b = { "filename" },
		lualine_c = {},
		lualine_x = { "diff" },
		lualine_y = { "filesize", "filetype" },
		lualine_z = {},
	},
	extensions = { "nvim-tree" },
})
