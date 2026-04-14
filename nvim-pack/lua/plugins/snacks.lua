vim.pack.add({
	{ src = "https://github.com/folke/snacks.nvim", },
})

local layouts = require("snacks.picker.config.layouts")

layouts.ivy_taller = vim.tbl_deep_extend("keep", {
	layout = {
		height = 0.8,
	}
}, layouts.ivy)

require("snacks").setup({
	bigfile = { enabled = true },
	explorer = { enabled = false },
	image = { enabled = false },
	indent = { enabled = true },
	input = { enabled = false },
	picker = {
		enabled = true,
		layout = {
			preset = "ivy_taller",
		}
	},
	notifier = { enabled = false },
	quickfile = { enabled = true },
	scope = { enabled = false },
	statuscolumn = { enabled = false },
	words = { enabled = false },
	rename = { enabled = true },
	zen = {
		enabled = true,
		toggles = {
			ufo             = true,
			dim             = true,
			git_signs       = false,
			diagnostics     = false,
			line_number     = false,
			relative_number = false,
			signcolumn      = "no",
			indent          = false
		}
	},
})

vim.keymap.set('n', '<leader>ff', "<cmd>lua Snacks.dashboard.pick('files')<cr>", {})
vim.keymap.set('n', '<leader>fr', "<cmd>lua Snacks.dashboard.pick('live_grep')<cr>", {})
vim.keymap.set('n', '<leader>fs', "<cmd>lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})<cr>", {})
