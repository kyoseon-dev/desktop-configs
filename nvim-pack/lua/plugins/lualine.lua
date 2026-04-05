vim.pack.add({
	{ src = "https://github.com/nvim-lualine/lualine.nvim", },
})

require("lualine").setup({
	options = {
		icons_enabled = true,
		disabled_filetypes = {
			statusline = { "neo-tree" },
		},
	},
	sections = {
		lualine_a = {
			--{ 'buffers' },
		},
	},
})
