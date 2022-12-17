vim.cmd("autocmd!")

vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

vim.wo.number = true
vim.wo.relativenumber = true

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.title = true
vim.opt.autoindent = true
vim.opt.hlsearch = true
vim.g.backup = false
vim.g.writebackup = false
vim.g.swapfile = false
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2
vim.opt.expandtab = true
vim.opt.hidden = false
vim.opt.scrolloff = 10
vim.opt.shell = "zsh"
vim.opt.ignorecase = true
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.ai = true --auto indent
vim.opt.si = true --smart indent
vim.opt.wrap = false --no wrap line
vim.opt.backspace = "start,eol,indent"
vim.opt.path:append({ "**" }) --finding files - search down into subfolder
vim.opt.wildignore:append({ "*/node_modules/*" })

--turn off paste when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", { pattern = "*", command = "set nopaste" })

vim.opt.formatoptions:append({ "r" })
