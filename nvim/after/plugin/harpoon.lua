local mark = require('harpoon.mark')
local ui = require('harpoon.ui')

vim.keymap.set('n', '<C-o>', function() mark.add_file() end)

vim.keymap.set('n', '<C-e>', ui.toggle_quick_menu)

vim.keymap.set('n', '<C-i>', function() ui.nav_next() end)

vim.keymap.set('n', '<C-k>', function() ui.nav_prev() end)
