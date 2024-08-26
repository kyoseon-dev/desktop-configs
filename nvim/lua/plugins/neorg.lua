return {
	"nvim-neorg/neorg",
	build = ":Neorg sync-parsers", -- This is the important bit!
	config = function()
		require("neorg").setup({
			load = {
				["core.defaults"] = {},
				["core.concealer"] = {
					config = {
						icon_preset = "basic",
					},
				},
				["core.summary"] = {},
				["core.ui"] = {},
				--["core.ui.calendar"] = {},
				["core.integrations.treesitter"] = {},
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
			},
		})
		vim.wo.conceallevel = 2
		vim.wo.concealcursor = ""
		--vim.wo.concealcursor = "nv"

		vim.keymap.set("n", "<leader>oi", ':Neorg index<CR>', {})
		vim.keymap.set("n", "<leader>ow", ':Neorg workspace ', {})
		vim.keymap.set("n", "<leader>ot", '<cmd>Neorg toggle-concealer<CR>', {})
	end,
}
