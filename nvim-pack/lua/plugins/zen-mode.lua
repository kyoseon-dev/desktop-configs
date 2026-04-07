vim.pack.add({
	{ src = "https://github.com/folke/zen-mode.nvim", },
	{ src = "https://github.com/folke/twilight.nvim", },
})

require('zen-mode').setup {
	window = {
		backdrop = 0.90,
		width = .80,
		height = .90,
		options = {
			-- signcolumn = "no", -- disable signcolumn
			-- number = false, -- disable number column
			-- relativenumber = false, -- disable relative numbers
			-- cursorline = false, -- disable cursorline
			-- cursorcolumn = false, -- disable cursor column
			-- foldcolumn = "0", -- disable fold column
			-- list = false, -- disable whitespace characters
		}
	},
	plugins = {
		options = {
			enabled = true,
			ruler = false, -- disables the ruler text in the cmd line area
			showcmd = false, -- disables the command in the last line of the screen
			laststatus = 0, -- turn off the statusline in zen mode
		},
		twilight = { enabled = true },
		gitsigns = { enabled = true },
		alacritty = {
			enabled = true,
			font = "13",
		}
	},
}

require('twilight').setup {
	dimming = {
		alpha = 0.25, -- amount of dimming
		-- we try to get the foreground from the highlight groups or fallback color
		color = { "Normal", "#ffffff" },
		term_bg = "#000000", -- if guibg=NONE, this will be used to calculate text color
		inactive = false, -- when true, other windows will be fully dimmed (unless they contain the same buffer)
	},
	context = 10,    -- amount of lines we will try to show around the current line
	treesitter = true, -- use treesitter when available for the filetype
	-- treesitter is used to automatically expand the visible text,
	-- but you can further control the types of nodes that should always be fully expanded
	expand = { -- for treesitter, we we always try to expand to the top-most ancestor with these types
		"function",
		"method",
		"table",
		"if_statement",
	},
	exclude = {}, -- exclude these filetypes
}

vim.keymap.set("n", "<leader>zm", "<cmd>ZenMode<CR>", {})
vim.keymap.set("n", "<leader>zt", "<cmd>Twilight<CR>", {})
