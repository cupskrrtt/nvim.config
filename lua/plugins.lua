local status, packer = pcall(require, "packer")
if not status then
	print("Packer not installed")
	return
end

vim.cmd([[packadd packer.nvim]])

packer.startup(function(use)
	use("wbthomason/packer.nvim")

	-- THEME PLUGIN -----------------------------------
	use("rebelot/kanagawa.nvim") --theme

	-- SNIPPET PLUGINS --------------------------------
	use("L3MON4D3/LuaSnip") -- snippet
	use("saadparwaiz1/cmp_luasnip")

	-- STATUS LINE PLUGIN -----------------------------
	use("nvim-lualine/lualine.nvim") --lualine

	-- LSP & COMPLETIONS PLUGINS ----------------------
	use("onsails/lspkind-nvim") --VSCode-like pictograms
	use("hrsh7th/cmp-buffer") --nvim-cmp source for buffer words
	use("hrsh7th/cmp-nvim-lsp") --nvim-cmp source for neovim's built-in LSP
	use("hrsh7th/cmp-path") --nvim-cmp source for path
	use("hrsh7th/nvim-cmp") --completions
	use("williamboman/mason.nvim") --LSP manager
	use("williamboman/mason-lspconfig.nvim") --bridge between lsp and lsp manager
	use("neovim/nvim-lspconfig") --LSP

	-- LINTING & FORMATTING PLUGINS --------------------
	use("jose-elias-alvarez/null-ls.nvim") --Linting & Formatting
	use("jayp0521/mason-null-ls.nvim") --bridge between null ls and mason

	-- SYNTAX HIGHLIGHTING PLUGIN -----------------------
	use({
		"nvim-treesitter/nvim-treesitter", --syntax highlighting
		run = ":TSUpdate",
	})

	-- FILE BROWSER PLUGIN -----------------------------
	use("nvim-tree/nvim-tree.lua") --file browser

	-- BUFFERLINE PLUGIN -------------------------------
	use({ "akinsho/bufferline.nvim", tag = "v3.*" }) --bufferline

	-- COMMENTING PLUGINS ------------------------------
	use("numToStr/Comment.nvim") --commenting plugin
	use("JoosepAlviste/nvim-ts-context-commentstring") --commenting plugin extend

	-- UTILS PLUGIN ------------------------------------
	use("qpkorr/vim-bufkill") --better bufkill
	use("themaxmarchuk/tailwindcss-colors.nvim") --tailwindcss colorizer
	use("rest-nvim/rest.nvim") --nvim rest client
	use("windwp/nvim-autopairs") --autopair
	use("windwp/nvim-ts-autotag") --autotag
	use("kyazdani42/nvim-web-devicons") --file icon
	use("lewis6991/gitsigns.nvim") --gitsigns
	use("henriquehbr/nvim-startup.lua") --nvim startup time
	use("nvim-lua/plenary.nvim") --commont utils
end)
