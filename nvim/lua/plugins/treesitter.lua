return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	priority = 1000,
	config = function()
		local config = require("nvim-treesitter.configs")

		config.setup({
			auto_install = true,
			ensure_installed = { "lua", "rust", "toml", "markdown", "norg" },
			highlight = {
				enabled = true,
				additional_vim_regex_highlighting = { 'markdown' },
			},
			indent = { enabled = true },

			rainbow = {
				enable = true,
				extended_mode = true,
				max_file_lines = nil,
			}
		})

	end,
}
