-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
--
--
vim.opt.iskeyword:remove("_")

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
vim.api.nvim_set_keymap('n', '<Leader>wo', '<C-w>o', {noremap = true, silent = true})

vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>", {})
vim.keymap.set("n", "<leader>bf", ":Neotree buffers reveal float<CR>", {})

return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x", dependencies = {"nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons", "MunifTanjim/nui.nvim",
		}                                                                                                                                                  
	},
}
