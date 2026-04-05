---@diagnostic disable: undefined-global
vim.loader.enable()

require("config.options")
require("config.keymaps")
require("config.lazy")

vim.pack.add({
	{
		src = 'https://github.com/nvim-neo-tree/neo-tree.nvim',
	},
	-- dependencies
	"https://github.com/nvim-lua/plenary.nvim",
	"https://github.com/MunifTanjim/nui.nvim",
	-- optional, but recommended
	"https://github.com/nvim-tree/nvim-web-devicons",
})
