vim.pack.add({
	{ src = 'https://github.com/MeanderingProgrammer/render-markdown.nvim', },

	'https://github.com/nvim-tree/nvim-web-devicons',
})

require('render-markdown').setup({
	heading = { border = true },
	indent = { enabled = true, },
	sign = {
		enabled = false,
		highlight = 'RenderMarkdownSign',
	},
	callout = {
		note      = { raw = '[!NOTE]'     , rendered = '󰋽 Note '     , highlight = 'RenderMarkdownInfo' },
	   tip       = { raw = '[!TIP]'      , rendered = '󰌶 Tip '      , highlight = 'RenderMarkdownSuccess' },
		important = { raw = '[!IMPORTANT]', rendered = '󰅾 Important ', highlight = 'RenderMarkdownHint' },
		warning   = { raw = '[!WARNING]'  , rendered = '󰀪 Warning '  , highlight = 'RenderMarkdownWarn' },
		caution   = { raw = '[!CAUTION]'  , rendered = '󰳦 Caution '  , highlight = 'RenderMarkdownError' },
		abstract  = { raw = '[!ABSTRACT]' , rendered = '󰨸 Abstract ' , highlight = 'RenderMarkdownInfo' },
		summary   = { raw = '[!SUMMARY]'  , rendered = '󰨸 Summary '  , highlight = 'RenderMarkdownInfo' },
		tldr      = { raw = '[!TLDR]'     , rendered = '󰨸 Tldr '     , highlight = 'RenderMarkdownInfo' },
		info      = { raw = '[!INFO]'     , rendered = '󰋽 Info '     , highlight = 'RenderMarkdownInfo' },
		todo      = { raw = '[!TODO]'     , rendered = '󰗡 Todo '     , highlight = 'RenderMarkdownInfo' },
		hint      = { raw = '[!HINT]'     , rendered = '󰌶 Hint '     , highlight = 'RenderMarkdownSuccess' },
		success   = { raw = '[!SUCCESS]'  , rendered = '󰄬 Success '  , highlight = 'RenderMarkdownSuccess' },
		check     = { raw = '[!CHECK]'    , rendered = '󰄬 Check '    , highlight = 'RenderMarkdownSuccess' },
		done      = { raw = '[!DONE]'     , rendered = '󰄬 Done '     , highlight = 'RenderMarkdownSuccess' },
		question  = { raw = '[!QUESTION]' , rendered = '󰘥 Question ' , highlight = 'RenderMarkdownWarn' },
		help      = { raw = '[!HELP]'     , rendered = '󰘥 Help '     , highlight = 'RenderMarkdownWarn' },
		faq       = { raw = '[!FAQ]'      , rendered = '󰘥 Faq '      , highlight = 'RenderMarkdownWarn' },
		attention = { raw = '[!ATTENTION]', rendered = '󰀪 Attention ', highlight = 'RenderMarkdownWarn' },
		failure   = { raw = '[!FAILURE]'  , rendered = '󰅖 Failure '  , highlight = 'RenderMarkdownError' },
		fail      = { raw = '[!FAIL]'     , rendered = '󰅖 Fail '     , highlight = 'RenderMarkdownError' },
		missing   = { raw = '[!MISSING]'  , rendered = '󰅖 Missing '  , highlight = 'RenderMarkdownError' },
		danger    = { raw = '[!DANGER]'   , rendered = '󱐌 Danger '   , highlight = 'RenderMarkdownError' },
		error     = { raw = '[!ERROR]'    , rendered = '󱐌 Error '    , highlight = 'RenderMarkdownError' },
		bug       = { raw = '[!BUG]'      , rendered = '󰨰 Bug '      , highlight = 'RenderMarkdownError' },
		example   = { raw = '[!EXAMPLE]'  , rendered = '󰉹 Example '  , highlight = 'RenderMarkdownHint' },
		quote     = { raw = '[!QUOTE]'    , rendered = '󱆨 Quote '    , highlight = 'RenderMarkdownQuote' },
		cite      = { raw = '[!CITE]'     , rendered = '󱆨 Cite '     , highlight = 'RenderMarkdownQuote' },
	},
	pipe_table = { alignment_indicator = '┅', },
	code = {
		style = normal,
		position = right,
		width = block,
		right_pad = 10,
	},

	html = { enabled = false },
	latex = { enabled = false },
	yaml = { enabled = false },
})
