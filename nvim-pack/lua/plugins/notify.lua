vim.pack.add({
	{ src = "https://github.com/rcarriga/nvim-notify", },
})

vim.notify = require("notify")

vim.notify.setup({
	stages = 'fade',
	timeout = 3000,
})
