-- save file 
vim.api.nvim_set_keymap('n', '<Leader>fs', ':w<CR>', {noremap = true, silent = true})
--vim.cmd("nnoremap <Leader>k :w<CR>")
vim.cmd("autocmd InsertLeave * :w")

-- window control
--
-- -- Set a normal mode, non-recursive keymap
-- split below
vim.api.nvim_set_keymap('n', '<Leader>ws', '<C-w>s', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>wj', '<C-w>j', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>wk', '<C-w>k', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>wl', '<C-w>l', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>wh', '<C-w>h', {noremap = true, silent = true})
-- maximize
vim.api.nvim_set_keymap('n', '<Leader>wm', '<C-w>m', {noremap = true, silent = true})
