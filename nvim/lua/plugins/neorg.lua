return {
	"nvim-neorg/neorg",
	build = ":Neorg sync-parsers", -- This is the important bit!
	dependencies = {
		"vhyrro/luarocks.nvim",
		"nvim-treesitter/nvim-treesitter",
		"nvim-lua/plenary.nvim",
	},
	--ft = "norg",
	after = "nvim-treesitter",
	lazy = false,
	config = function()
		require("neorg").setup({
			load = {
				["core.defaults"] = {},
				["core.concealer"] = {
					config = {
						icon_preset = "varied",
					},
				},
				["core.summary"] = {},
				["core.ui"] = {},
				--["core.ui.calendar"] = {},
				["core.integrations.treesitter"] = {
					config = {
						configure_parsers = true,
					},
				},
				["core.journal"] = {
					config = {
						strategy = "flat",
					},
				},
				["core.completion"] = {
					config = {
						engine = "nvim-cmp",
					},
				},
				["core.dirman"] = {
					config = {
						workspaces = {
							techs = "~/Documents/notes/techs",
							racing = "~/Documents/notes/racing",
							music = "~/Documents/notes/music",
						},
						default_workspace = "music",
						index = "index.norg",
					},
				},
				["core.highlights"] = {
				},
			},
		})
		vim.wo.conceallevel = 2
		--vim.wo.concealcursor = ""
		vim.wo.concealcursor = "nv"

		vim.keymap.set("n", "<leader>oi", ':Neorg index<CR>', {})
		vim.keymap.set("n", "<leader>ow", ':Neorg workspace ', {})
		vim.keymap.set("n", "<leader>oc", '<cmd>Neorg toggle-concealer<CR>', {})
	end,
}
