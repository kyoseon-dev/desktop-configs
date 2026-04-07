vim.pack.add({
	{
		src = "https://github.com/nvim-treesitter/nvim-treesitter",
		version = "master",
	},
})

require("nvim-treesitter.configs").setup({
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
