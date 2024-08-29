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
	-- {"samesense/nvim-sm-helpers",
	-- 	branch="main",
	-- 	config = function ()
	-- 		require("plugin_name")
	-- 		vim.keymap.set('n', '<Leader>o',
	-- 			function() plugin_name.open_and_insert() end )
	-- 	end
	-- },

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
  "samesense/snakemake.nvim",
config = function () require("snakemake") vim.keymap.set('n', '<Leader>o', function() require("snakemake").open_and_insert() end ) end},

	{
  "zbirenbaum/copilot-cmp",
  config = function ()
    require("copilot_cmp").setup()
  end
},

{
   "m4xshen/hardtime.nvim",
   dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
   opts = {}
},
        {
  'stevearc/conform.nvim',
  opts = {},
                config = function()
                        require("conform").setup({
                                format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_format = "fallback",
  },
  formatters_by_ft = {
    lua = { "stylua" },
    -- Conform will run multiple formatters sequentially
    python = { "isort", "black" },
                                        snakemake = {"snakefmt"},
    -- You can customize some of the format options for the filetype (:help conform.format)
    rust = { "rustfmt", lsp_format = "fallback" },
  },
})
                end,
},

	{
    "svampkorg/moody.nvim",
    event = { "ModeChanged", "BufWinEnter", "WinEnter" },
    dependencies = {
        -- or whatever "colorscheme" you use to setup your HL groups :)
        -- Colours can also be set within setup, in which case this is redundant.
        "catppuccin/nvim",
    },
    opts = {
        -- you can set different blend values for your different modes.
        -- Some colours might look better more dark, so set a higher value
        -- will result in a darker shade.
        blends = {
            normal = 0.2,
            insert = 0.2,
            visual = 0.25,
            command = 0.2,
            operator = 0.2,
            replace = 0.2,
            select = 0.2,
            terminal = 0.2,
            terminal_n = 0.2,
        },
        -- there are two ways to define colours for the different modes.
        -- one way is to define theme here in colors. Another way is to
        -- set them up with highlight groups. Any highlight group set takes
        -- precedence over any colours defined here.
        colors = {
            normal = "#00BFFF",
            insert = "#70CF67",
            visual = "#AD6FF7",
            command = "#EB788B",
            operator = "#FF8F40",
            replace = "#E66767",
            select = "#AD6FF7",
            terminal = "#4CD4BD",
            terminal_n = "#00BBCC",
        },
        -- disable filetypes here. Add for example "TelescopePrompt" to
        -- not have any coloured cursorline for the telescope prompt.
        disabled_filetypes = { "TelescopePrompt" },
        -- you can turn on or off bold characters for the line numbers
        bold_nr = true,
        -- you can turn on and off a feature which shows a little icon and
        -- registry number at the end of the CursorLine, for when you are
        -- recording a macro! Default is false.
        recording = {
            enabled = false,
            icon = "󰑋",
            -- you can set some text to surround the recording registry char with
            -- or just set one to empty to maybe have just one letter, an arrow
            -- perhaps! For example recording to q, you could have! "󰑋    q" :D
            pre_registry_text = "[",
            post_registry_text = "]",
        },
    },
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
