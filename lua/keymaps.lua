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

--window related keymap
keymap.set("n", "<leader>hs", ":split<CR>", { silent = true })
keymap.set("n", "<leader>vs", ":vsplit<CR>", { silent = true })

--window movement
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sl", "<C-w>l")

--rest-nvim keymap
keymap.set("n", "tt", "<Plug>RestNvim<CR>")
