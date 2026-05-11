vim.opt.clipboard = "unnamedplus"

vim.opt.autoindent = true
vim.opt.bs = "indent,eol,start"
vim.opt.cursorline = true
vim.opt.cursorcolumn = true
vim.opt.expandtab = false
vim.opt.timeoutlen = 1000
vim.opt.ttimeoutlen = 0
vim.opt.wrap = false
--vim.opt.scrolloff = 999

vim.opt.list = true
vim.opt.listchars = {
	tab = "· ",
	trail = "·",
	extends = ">",
	precedes = "<",
}

vim.opt.fillchars = {
	eob = "·",
}

--vim.opt.shortmess:append("c")

vim.o.updatetime = 200

vim.o.ignorecase = true
vim.o.smartcase = true

vim.opt.termguicolors = true
vim.opt.title = true

vim.opt.tabstop = 3
vim.opt.softtabstop = 3
vim.opt.shiftwidth = 3

vim.o.confirm = true
vim.o.number = true
vim.o.relativenumber = true
vim.o.signcolumn = "yes"

vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0

-- vim.pack.update(nil, { force = true })
