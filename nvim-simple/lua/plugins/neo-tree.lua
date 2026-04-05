return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	keys = {
		{ "<leader>ff", "<cmd>Neotree filesystem<CR>", desc = "Neo-tree filesystem" },
		{ "<leader>fg", "<cmd>Neotree float git_status<CR>", desc = "Neo-tree git status" },
		{ "<leader>fb", "<cmd>Neotree float buffers<CR>", desc = "Neo-tree buffers" },
		{ "<leader>fc", "<cmd>Neotree close<CR>", desc = "Neo-tree close" },
	},
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	opts = {
		source_selector = {
			win_bar = false,
			statusline = false,
		},
		close_if_last_window = false,
		popup_border_style = "rounded",
		enable_git_status = true,
	},
}
