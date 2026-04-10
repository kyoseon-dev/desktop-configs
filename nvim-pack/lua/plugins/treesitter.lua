vim.pack.add({
	{
		src = "https://github.com/nvim-treesitter/nvim-treesitter",
		version = "master",
	},
})

require("nvim-treesitter.configs").setup({
	build = ":TSUpdate",

	auto_install = true,
	ensure_installed = { "lua", "rust", "toml", "markdown", "norg", },
	highlight = {
		enabled = true,
		additional_vim_regex_highlighting = { 'markdown' },
	},
	indent = { enabled = true },

	rainbow = {
		enable = true,
		extended_mode = true,
		max_file_lines = nil,
	},
})

vim.api.nvim_create_autocmd('User', { pattern = 'TSUpdate',
	callback = function()
	  require('nvim-treesitter.parsers').norg_meta = {
		 install_info = {
			url = 'https://github.com/nvim-neorg/tree-sitter-norg-meta',
			--revision = <sha>, -- commit hash for revision to check out; HEAD if missing
			-- optional entries:
			-- branch = 'develop', -- only needed if different from default branch
			location = 'parser', -- only needed if the parser is in subdirectory of a "monorepo"
			generate = true, -- only needed if repo does not contain pre-generated `src/parser.c`
			--generate_from_json = false, -- only needed if repo does not contain `src/grammar.json` either
			--queries = 'queries/neovim', -- also install queries from given directory
		 },
	  }
end})
