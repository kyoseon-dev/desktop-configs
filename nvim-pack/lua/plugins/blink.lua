vim.pack.add({
	{
		src = "https://github.com/saghen/blink.cmp",
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
				use_nvim_cmp_as_default = false,
				nerd_font_variant = 'normal',
			},
			completion = {
				keyword = { range = 'full' },
				menu = {
				--[[
					draw = {
						columns = {
							{ 'label', 'label_description', gap = 1 },
							{ 'kind_icon', 'kind' },
						},
					},
				--]]
				},
				documentation = { auto_show = true, auto_show_delay_ms = 500, },
				ghost_text = { enabled = true, },
			},

			sources = {
				default = { 'lsp', 'path', 'snippets', 'buffer', },
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
