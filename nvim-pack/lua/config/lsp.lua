vim.lsp.enable({
	'rust-analyzer'
})

vim.diagnostic.config({
	virtual_text = false,
	sign = true,
	update_in_insert = true,
	underline = true,
	serverity_sort = false,
	float = {
		border = "single",
		source = "always",
	},
})

local sign = function(opts)
	vim.fn.sign_define(opts.name, {
		texthl = opts.name,
		text = opts.text,
	})
end

sign({ name = "DiagnosticSignError", text = "" })
sign({ name = "DiagnosticSignWarn", text = "" })
sign({ name = "DiagnosticSignHint", text = "⚑" })
sign({ name = "DiagnosticSignInfo", text = "" })

opts = {}
vim.keymap.set("n", "<leader>le", vim.diagnostic.open_float, opts)
vim.keymap.set("n", "<leader>lD", vim.lsp.buf.declaration, opts)
vim.keymap.set("n", "<leader>ld", vim.lsp.buf.definition, opts)
vim.keymap.set("n", "<leader>lk", vim.lsp.buf.hover, opts)
vim.keymap.set("n", "<leader>li", vim.lsp.buf.implementation, opts)
vim.keymap.set("n", "<leader>lt", vim.lsp.buf.type_definition, opts)
vim.keymap.set("n", "<leader>lc", vim.lsp.buf.code_action, opts)
vim.keymap.set("n", "<leader>lr", vim.lsp.buf.references, opts)
vim.keymap.set("n", "<leader>lf", function() vim.lsp.buf.format({ async = true }) end, opts)

--[[
vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("UserLspConfig", {}),
	callback = function(ev)
		-- Enable completion triggered by <c-x><c-o>
		vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

		-- Buffer local mappings.
		local opts = { buffer = ev.buf }

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
--]]
