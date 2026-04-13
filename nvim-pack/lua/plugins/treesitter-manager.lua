vim.pack.add({
	{ src = "https://github.com/romus204/tree-sitter-manager.nvim", },
})

require("tree-sitter-manager").setup({
	--ensure_installed = { 'norg', 'norg_meta' },
	--auto_install = true,
	languages = {
		norg = {
			install_info = {
				url = "https://github.com/nvim-neorg/tree-sitter-norg",
				files = { "src/parser.c", "src/scanner.cc" },
				branch = "main",
				use_repo_queries = true,
			},
		},
		norg_meta = {
			install_info = {
				url = "https://github.com/nvim-neorg/tree-sitter-norg-meta",
				use_repo_queries = true,
			},
		},
	},
})

--[[

<cmd>TSManager
i - Install
x - Remove
u - Update
r - refresh
q - close

--]]
