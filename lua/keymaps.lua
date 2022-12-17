vim.g.mapleader = " "
local keymap = vim.keymap

--don't yank with x
keymap.set("n", "x", '"_x')

--increment / decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

--delete a word backwards
keymap.set("n", "dw", 'vb"_d')

--select all
keymap.set("n", "<C-a>", "gg<S-v>G")

--custom user keymap
keymap.set("i", "jk", "<ESC>")
keymap.set("n", "ss", ":w<CR>")
keymap.set("n", "ww", ":q<CR>")

--custom terminal keymap
keymap.set("t", "ww", "<C-\\><C-n>", { noremap = true })

--rest-nvim keymap
keymap.set("n", "tt", "<Plug>RestNvim<CR>")
