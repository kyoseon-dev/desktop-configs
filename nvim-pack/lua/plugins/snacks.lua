vim.pack.add({
	{ src = "https://github.com/folke/snacks.nvim", },
})

local layouts = require("snacks.picker.config.layouts")

layouts.ivy_taller = vim.tbl_deep_extend("keep", {
	layout = {
		height = 0.8,
		{ win = "input", height = 1, border = { "", "", "", "", "", "", "", " ", }, },
	}
}, layouts.ivy)

require("snacks").setup({
	bigfile      = { enabled = true },
	explorer     = { enabled = false },
	image        = { enabled = false },
	indent       = { enabled = true },
	input        = { enabled = false },
	picker       = {
		enabled = true,
		layout = { preset = "ivy_taller", },
	},
	notifier     = { enabled = false },
	quickfile    = { enabled = true },
	scope        = { enabled = false },
	statuscolumn = { enabled = false },
	words        = { enabled = false },
	rename       = { enabled = true },
	zen          = { enabled = false, },
})

vim.keymap.set('n', '<leader>fa', function() Snacks.picker() end, {})
vim.keymap.set('n', '<leader>ff', function() Snacks.picker('files') end, {})
vim.keymap.set('n', '<leader>fr', function() Snacks.picker('live_grep') end, {})
vim.keymap.set('n', '<leader>fc', function() Snacks.picker('files', {cwd = vim.fn.stdpath('config')}) end, {})
