vim.pack.add({
	{
		src = "https://github.com/saghen/blink.cmp",
		version = vim.version.range("^1"),
	},

	"https://github.com/rafamadriz/friendly-snippets",
})

local group = vim.api.nvim_create_augroup("BlinkCmpLazyLoad", { clear = true })

vim.api.nvim_create_autocmd('InsertEnter', {
	pattern = "*",
	group = group,
	once = true,
	callback = function()
		require('blink.cmp').setup({
			keymap = { preset = "super-tab" },
			appearance = {
				use_nvim_cmp_as_default = true,
			},
			completion = {
				documentation = { auto_show = false },
			},

			sources = {
				default = { 'lsp', 'path', 'snippets', 'buffer' },
				per_filetype = {
					org = {'orgmode'}
				},
				providers = {
					orgmode = {
						name = 'Orgmode',
						module = 'orgmode.org.autocompletion.blink',
						fallbacks = { 'buffer' },
					},
				},
			},
			fuzzy = { implementation = "prefer_rust_with_warning" },
		})
	end,
})
