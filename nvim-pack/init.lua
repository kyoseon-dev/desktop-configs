vim.loader.enable()

require("vim._core.ui2").enable()

require("config.options")
require("config.keymaps")
require("config.lsp")

require("plugins.treesitter")
require("plugins.completion")
require("plugins.neorg")
require("plugins.render-markdown")
require("plugins.gitsigns")
require("plugins.lualine")
require("plugins.telescope")
require("plugins.zen-mode")
