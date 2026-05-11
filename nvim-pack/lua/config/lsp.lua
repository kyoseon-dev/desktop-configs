vim.pack.add{
	{ src = "https://github.com/neovim/nvim-lspconfig" }
}

vim.lsp.enable({
	'clangd',
	'rust-analyzer',
	'lua_ls',
})
vim.o.autocomplete = true
vim.opt.complete:append('o')
vim.opt.completeopt = { 'menuone', 'noselect' }

vim.diagnostic.config({
	float = {
		border = "single",
	},
})

vim.api.nvim_create_autocmd('LspAttach', {
	group = vim.api.nvim_create_augroup("UserLspConfig", { clear = true }),
	callback = function(ev)
		local client = assert(vim.lsp.get_client_by_id(ev.data.client_id))
		if client:supports_method('textDocument/completion') then
			vim.lsp.completion.enable(true, client.id, ev.buf, { auto_trigger = true, })
		end

		-- Buffer local mappings.
		local opts = { buffer = ev.buf }

		-- "i" "C-x" lsp map
		-- "S-k" info
		vim.keymap.set("n", "<leader>le", vim.diagnostic.open_float, opts)
		vim.keymap.set("n", "<leader>lD", vim.lsp.buf.declaration, opts)
		vim.keymap.set("n", "<leader>ld", vim.lsp.buf.definition, opts)
		vim.keymap.set("n", "<leader>lk", vim.lsp.buf.hover, opts)
		vim.keymap.set("n", "<leader>li", vim.lsp.buf.implementation, opts)
		vim.keymap.set("n", "<leader>lt", vim.lsp.buf.type_definition, opts)
		vim.keymap.set("n", "<leader>lc", vim.lsp.buf.code_action, opts)
		vim.keymap.set("n", "<leader>lr", vim.lsp.buf.references, opts)
		vim.keymap.set("n", "<leader>lf", function() vim.lsp.buf.format({ async = true }) end, opts)
	end,
})
