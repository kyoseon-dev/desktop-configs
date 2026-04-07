---@diagnostic disable: undefined-global
vim.loader.enable()

require("config.options")
require("config.keymaps")

require("plugins.treesitter")
require("plugins.completion")
require("plugins.neorg")
require("plugins.render-markdown")
require("plugins.neo-tree")
require("plugins.gitsigns")
require("plugins.lualine")
require("plugins.telescope")
require("plugins.zen-mode")

-- <ctrl>a: increase number, <ctrl>x: decrease number, g<ctrl>[a,x]
-- <ctrl>w: delete word in insert mode 
-- <ctrl>o: execute one command in insert mode
