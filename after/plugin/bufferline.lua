local status, bufferline = pcall(require, "bufferline")
if not status then
	return
end

bufferline.setup({
	options = {
		offsets = {
			{
				filetype = "NvimTree",
				text = "File Explorer",
				separator = true,
			},
		},
		diagnostics = "nvim_lsp",
	},
})

vim.keymap.set("n", "<C-h>", ":bp<CR>")
vim.keymap.set("n", "<C-l>", ":bn<CR>")
vim.keymap.set("n", "<C-d>", ":BD<CR>")
