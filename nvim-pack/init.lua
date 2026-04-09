---@diagnostic disable: undefined-global
vim.loader.enable()

require("vim._core.ui2").enable()

require("config.options")
require("config.keymaps")

require("plugins.treesitter")
require("plugins.completion")
require("plugins.neorg")
require("plugins.render-markdown")
require("plugins.gitsigns")
require("plugins.lualine")
require("plugins.telescope")
require("plugins.zen-mode")

--[=[

 <C-A>,<C-X>: counter
 g<C-A>, g<C-X>: visual block counter
 <C-N>, <C-P>: search in current file
 <C-X><C-F>: auto completion of path
 <C-W><C-F>: open file
 ]p: paste indent

 q<name>: record macro
 q: stop recording macro
 @<name>: run macro
 @@: rerun last run macro

 m<mark>
 '<mark>
 <C-E>: scroll line up
 <C-Y>: scroll line down
 [[: previous method
 ]]: next method
 %: goto bracket
 ciw, cw, cc: change

 ab: 'word' -> 'another word' (cancel execution: typing CTRL-V after typing word)
 unab 'word' (cancel ab)

--]=]
