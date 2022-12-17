local status, nvim_lsp = pcall(require, "lspconfig")
if not status then
	return
end

local protocol = require("vim.lsp.protocol")

local on_attach = function(client, bufnr)
	--formatting
	if client.server_capabilities.documentFormattingProvider then
		vim.api.nvim_create_autocmd("BufWritePre", {
			group = vim.api.nvim_create_augroup("Format", { clear = true }),
			buffer = bufnr,
			callback = function()
				vim.lsp.buf.formatting_seq_sync()
			end,
		})
	end
	--tailwindcss colorizer
	require("tailwindcss-colors").buf_attach(bufnr)
end

local capabilities = require("cmp_nvim_lsp").default_capabilities()

nvim_lsp.tsserver.setup({
	capabilities = capabilities,
	on_attach = on_attach,
})

nvim_lsp.sumneko_lua.setup({
	capabilities = capabilities,
	on_attach = on_attach,
	settings = {
		Lua = {
			diagnostic = {
				globals = { "vim" },
			},
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true),
				checkThirdParty = false,
			},
		},
	},
})

nvim_lsp.html.setup({
	capabilities = capabilities,
	on_attach = on_attach,
})

nvim_lsp.tailwindcss.setup({
	capabilities = capabilities,
	on_attach = on_attach,
})
