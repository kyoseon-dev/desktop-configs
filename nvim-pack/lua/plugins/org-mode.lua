vim.pack.add({
  { src = 'https://github.com/nvim-orgmode/orgmode', },

  'https://github.com/chipsenkbeil/org-roam.nvim',
  'https://github.com/nvim-orgmode/org-bullets.nvim',
  'https://github.com/lukas-reineke/headlines.nvim',
})

require('orgmode').setup({
	org_agenda_files = '~/Documents/orgfiles/**/*',
	org_default_notes_file = '~/Documents/orgfiles/refile.org',
})

require('org-bullets').setup({})
require('headlines').setup({})
require('org-roam').setup({ directory = "~/Documents/orgfiles", })

-- Experimental LSP support
vim.lsp.enable('org')

--[[ orgmode
<leader>oa  - Open agenda prompt
<leader>oc  - Open capture prompt
g?          - Help in any orgmode buffer
--]]

--[[ org-roam
<leader>nc  - Opens org-roam capture window.
<leader>nf  - Finds node and moves to it, creating it if it does not exist.
<leader>naa - Adds an alias to the node under cursor.
<leader>noa - Adds an origin to the node under cursor.
<leader>n.  - Completes the node under cursor.
<leader>nn  - Goes to the next node in sequence (via origin) for the node under cursor.
<leader>np  - Goes to the prev node in sequence (via origin) for the node under cursor.
<leader>ni  - Inserts node at cursor position, creating it if it does not exist.
<leader>nm  - Same as insert_node, but skips opening capture buffer.
<leader>nq  - Opens the quickfix menu for backlinks to the current node under cursor.
<leader>nar - Removes an alias from the node under cursor.
<leader>nor - Removes the origin from the node under cursor.
<leader>nl  - Toggles the org-roam node-view buffer for the node under cursor.
<leader>nb  - Toggles a fixed org-roam node-view buffer for a selected node.

<leader>ndD - capture a specific date's note
<leader>ndN - capture today's note
<leader>ndT - capture tomorrow's note
<leader>ndY - capture yesterday's note
<leader>nd. - Navigate to dailies note directory.
<leader>ndd - Navigate to specific date’s note.
<leader>ndf - Navigate to the next note in date sequence.
<leader>ndb - Navigate to the previous note in date sequence.
<leader>ndn - Navigate to today’s note.
<leader>ndt - Navigate to tomorrow’s note.
<leader>ndy - Navigate to yesterday’s note.
--]]
