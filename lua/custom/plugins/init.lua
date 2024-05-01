-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
--
--
vim.opt.iskeyword:remove("_")

-- sm_run
--local open_and_modify = require'sm_run'
-- Map a key combination to the open_and_insert function
--vim.api.nvim_set_keymap('n', '<Leader>o', function() plugin_name.open_and_insert(), {noremap = true, silent = true})
-- end


vim.api.nvim_set_keymap('n', '<Leader>fs', ':w<CR>', {noremap = true, silent = true})
--vim.cmd("nnoremap <Leader>k :w<CR>")
--vim.cmd("autocmd InsertLeave * :w")

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
	{"samesense/nvim-sm-helpers",
		branch="main",
		config = function ()
			require("plugin_name")
			vim.keymap.set('n', '<Leader>o',
				function() plugin_name.open_and_insert() end )
		end
	},

	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x", dependencies = {"nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons", "MunifTanjim/nui.nvim",
		}
	},
  {
        'zbirenbaum/copilot.lua',
		cmd = "Copilot",
        event = 'InsertEnter',
		config = function()
    require("copilot").setup({})
  end,
    },

-- 	{
--     "ThePrimeagen/harpoon",
--     branch = "harpoon2",
--     dependencies = { "nvim-lua/plenary.nvim" },
--     config = function ()
-- 	local harpoon = require("harpoon")
-- 	harpoon:setup()
-- 	vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
-- 	vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
-- 	vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end)
--     end
-- },

	{
  "zbirenbaum/copilot-cmp",
  config = function ()
    require("copilot_cmp").setup()
  end
},


  -- {
  --       'zbirenbaum/copilot.lua',
  --       dependencies = {
  --           'zbirenbaum/copilot-cmp',
  --       },
  --       event = 'InsertEnter',
  --       config = function()
  --           require('plugin-config.copilot_config')
  --       end,
  --   },

}
