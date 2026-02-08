-- Custom keymaps
-- All non-plugin keymaps consolidated here

-- =============================================================================
-- Basic keymaps (from kickstart)
-- =============================================================================

-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode with a easier shortcut
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Split navigation with CTRL+<hjkl>
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- =============================================================================
-- Custom keymaps
-- =============================================================================

-- Change inner word without yanking
vim.keymap.set('n', 'ciw', '"_ciw', { noremap = true, silent = true })

-- Window control (leader-based)
vim.keymap.set('n', '<Leader>ws', '<C-w>s', { noremap = true, silent = true, desc = '[W]indow [S]plit' })
vim.keymap.set('n', '<Leader>wj', '<C-w>j', { noremap = true, silent = true, desc = '[W]indow down' })
vim.keymap.set('n', '<Leader>wk', '<C-w>k', { noremap = true, silent = true, desc = '[W]indow up' })
vim.keymap.set('n', '<Leader>wl', '<C-w>l', { noremap = true, silent = true, desc = '[W]indow right' })
vim.keymap.set('n', '<Leader>wh', '<C-w>h', { noremap = true, silent = true, desc = '[W]indow left' })
vim.keymap.set('n', '<Leader>wo', '<C-w>o', { noremap = true, silent = true, desc = '[W]indow [O]nly' })

-- Save file
vim.keymap.set('n', '<Leader>fs', ':w<CR>', { noremap = true, silent = true, desc = '[F]ile [S]ave' })

-- Format buffer
vim.keymap.set('', '<leader>m', function()
  require('conform').format { async = true, lsp_format = 'fallback' }
end, { desc = '[M]anual format buffer' })
