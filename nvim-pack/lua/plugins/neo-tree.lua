vim.pack.add({
	{
		src = "https://github.com/nvim-neo-tree/neo-tree.nvim",
		version = vim.version.range('3'),
	},

	-- dependencies
	"https://github.com/nvim-lua/plenary.nvim",
	"https://github.com/MunifTanjim/nui.nvim",
	-- optional, but recommended
	"https://github.com/nvim-tree/nvim-web-devicons",
})

require("neo-tree").setup({
	source_selector = {
		win_bar = false,
		statusline = false,
	},
	close_if_last_window = false,
	popup_border_style = "rounded",
	enable_git_status = true,
})

vim.keymap.set("n", "<leader>ff", "<cmd>Neotree filesystem<CR>", {})
vim.keymap.set("n", "<leader>fg", "<cmd>Neotree float git_status<CR>", {})
vim.keymap.set("n", "<leader>fb", "<cmd>Neotree float buffers<CR>", {})
vim.keymap.set("n", "<leader>fc", "<cmd>Neotree close<CR>", {})
