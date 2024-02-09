return {
	"folke/zen-mode.nvim",

	config = function()
		require('zen-mode').setup {
			window = {
				backdrop = 0.90,
				width = .86,
				height = .96,
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
		vim.keymap.set("n", "<leader>zm", "<cmd>ZenMode<CR>", {})
	end,
}
