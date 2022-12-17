local status, theme = pcall(require, "kanagawa")
if not status then
	return
end

theme.setup({
	commentSytle = { italic = true },
	transparent = true,
})

vim.cmd("colorscheme kanagawa")
