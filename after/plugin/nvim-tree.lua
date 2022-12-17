local status, tree = pcall(require, "nvim-tree")
if not status then
	return
end

tree.setup({
	filters = {
		dotfiles = false,
	},
})

vim.keymap.set("n", "fb", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<S-TAB>", ":NvimTreeFocus<CR>")
