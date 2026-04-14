vim.pack.add({
	{
		src = "https://github.com/saghen/blink.cmp",
	},

	"https://github.com/rafamadriz/friendly-snippets",
})

require('blink.cmp').setup({
	keymap = { preset = "super-tab" },
	appearance = {
		use_nvim_cmp_as_default = false,
		nerd_font_variant = 'normal',
	},
	completion = {
		keyword = { range = 'full' },
		documentation = { auto_show = true, auto_show_delay_ms = 500, },
		ghost_text = { enabled = true, },
	},
	signature = {
		enabled = true,
		window = {
			show_documentation = true,
			border = 'rounded',
		},
	},
	sources = {
		default = { 'lsp', 'path', 'snippets', 'buffer', },
		per_filetype = {
			org = { 'orgmode' }
		},
		providers = {
			orgmode = {
				name = 'Orgmode',
				module = 'orgmode.org.autocompletion.blink',
				fallbacks = { 'buffer' },
			},
		},
	},
	cmdline = { enabled = true, },
	fuzzy = { implementation = "prefer_rust_with_warning" },
})
