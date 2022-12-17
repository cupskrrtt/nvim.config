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

vim.keymap.set("n", "<C-[>", ":bp<CR>")
vim.keymap.set("n", "<C-]>", ":bn<CR>")
vim.keymap.set("n", "<C-w>", ":BD<CR>")
