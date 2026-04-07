vim.pack.add({
	{
		src = "https://github.com/nvim-neorg/neorg",
	},

	-- dependencies
	"https://github.com/pysan3/pathlib.nvim",
	"https://github.com/nvim-neotest/nvim-nio",
	"https://github.com/nvim-neorg/lua-utils.nvim",
	"https://github.com/vhyrro/luarocks.nvim",
	"https://github.com/nvim-lua/plenary.nvim",
})

require("neorg").setup({
	-- build = ":Neorg sync-parsers",
	load = {
		["core.defaults"] = {},
		["core.concealer"] = {
			config = { icon_preset = "varied", },
		},
		["core.summary"] = {},
		["core.ui"] = {},
		["core.ui.calendar"] = {},
		["core.integrations.treesitter"] = {
			config = { configure_parsers = true, },
		},
		["core.journal"] = {
			config = { strategy = "flat", },
		},
		["core.completion"] = {
			config = {
				engine = "nvim-cmp",
				name = "[Norg]",
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
		["core.highlights"] = {},
	},
})

vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"}, {
  pattern = {"*.norg"},
  callback = function ()
    vim.opt.conceallevel = 2
    vim.opt.concealcursor = 'nc'
  end
})

vim.keymap.set("n", "<leader>oi", "<cmd>Neorg index<CR>", { desc = "Neorg: Open index" })
vim.keymap.set("n", "<leader>oc", "<cmd>Neorg toggle-concealer<CR>", { desc = "Neorg: Toggle concealer" })
vim.keymap.set("n", "<leader>ot", "<cmd>Neorg toc<CR>", { desc = "Neorg: Table of contents" })
vim.keymap.set("n", "<leader>owt", "<cmd>Neorg workspace techs<CR>", { desc = "Neorg: Workspace techs" })
vim.keymap.set("n", "<leader>owr", "<cmd>Neorg workspace racing<CR>", { desc = "Neorg: Workspace racing" })
vim.keymap.set("n", "<leader>owm", "<cmd>Neorg workspace music<CR>", { desc = "Neorg: Workspace music" })
