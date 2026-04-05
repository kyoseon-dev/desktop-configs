---@diagnostic disable: undefined-global
vim.loader.enable()

require("config.options")
require("config.keymaps")

require("plugins.neo-tree")
require("plugins.gitsigns")
require("plugins.lualine")
