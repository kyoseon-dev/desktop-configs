---@type vim.lsp.config

return {
	cmd = { "rust-analyzer" },
	filetypes = { "rust" },
	root_markers = { { "Config.toml" }, ".git" },

	settings = {
		["rust-analyzer"] = {
			--files = { watcher = "server" },
			--cargo = { targetDir = true },
			cargo = { allFeatures = true },
			check = { command = "clippy" },
			inlayHints = {
				bindingModeHints = { enabled = true },
				closureCaptureHints = { enabled = true },
				closureReturnTypeHints = { enable = "always" },
				maxLength = 100,
			},
		},
	},
}
