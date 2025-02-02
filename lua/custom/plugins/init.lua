-- keep content visible after exit
vim.cmd [[
  set t_ti=
  set t_te=
]]

--vim.opt.clipboard = '' -- Only use system clipboard when explicitly requested
vim.api.nvim_set_keymap('n', 'ciw', '"_ciw', { noremap = true, silent = true })
-- window control
--vim.api.nvim_del_keymap('n', '<leader>ws')
vim.api.nvim_set_keymap('n', '<Leader>ws', '<C-w>s', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>wj', '<C-w>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>wk', '<C-w>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>wl', '<C-w>l', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>wh', '<C-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>wo', '<C-w>o', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<Leader>fs', ':w<CR>', { noremap = true, silent = true })

vim.opt.relativenumber = true
vim.opt.iskeyword:remove '_'

-- remove confirm format keymap
-- vim.api.nvim_del_keymap('n', '<leader>f')
--

return {
  {
    'folke/snacks.nvim',
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
      bigfile = { enabled = true },
      dashboard = { enabled = true },
      indent = { enabled = true },
      input = { enabled = true },
      notifier = { enabled = true },
      quickfile = { enabled = true },
      scroll = { enabled = true },
      statuscolumn = { enabled = true },
      words = { enabled = true },
    },
  },
  {
    'wurli/visimatch.nvim',
    opts = {
      -- The highlight group to apply to matched text
      hl_group = 'Search',
      -- The minimum number of selected characters required to trigger highlighting
      chars_lower_limit = 6,
      -- The maximum number of selected lines to trigger highlighting for
      lines_upper_limit = 30,
      -- By default, visimatch will highlight text even if it doesn't have exactly
      -- the same spacing as the selected region. You can set this to `true` if
      -- you're not a fan of this behaviour :)
      strict_spacing = false,
      -- Visible buffers which should be highlighted. Valid options:
      -- * `"filetype"` (the default): highlight buffers with the same filetype
      -- * `"current"`: highlight matches in the current buffer only
      -- * `"all"`: highlight matches in all visible buffers
      buffers = 'filetype',
    },
  },
  --
  -- {
  --   'saghen/blink.cmp',
  --   -- optional: provides snippets for the snippet source
  --   dependencies = { 'rafamadriz/friendly-snippets', 'giuxtaposition/blink-cmp-copilot' },
  --
  --   -- use a release tag to download pre-built binaries
  --   version = '*',
  --   -- AND/OR build from source, requires nightly: https://rust-lang.github.io/rustup/concepts/channels.html#working-with-nightly-rust
  --   -- build = 'cargo build --release',
  --   -- If you use nix, you can build from source using latest nightly rust with:
  --   -- build = 'nix run .#build-plugin',
  --
  --   ---@module 'blink.cmp'
  --   ---@type blink.cmp.Config
  --   opts = {
  --     -- 'default' for mappings similar to built-in completion
  --     -- 'super-tab' for mappings similar to vscode (tab to accept, arrow keys to navigate)
  --     -- 'enter' for mappings similar to 'super-tab' but with 'enter' to accept
  --     -- See the full "keymap" documentation for information on defining your own keymap.
  --     keymap = { preset = 'default' },
  --
  --     appearance = {
  --       -- Sets the fallback highlight groups to nvim-cmp's highlight groups
  --       -- Useful for when your theme doesn't support blink.cmp
  --       -- Will be removed in a future release
  --       use_nvim_cmp_as_default = true,
  --       -- Set to 'mono' for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
  --       -- Adjusts spacing to ensure icons are aligned
  --       nerd_font_variant = 'mono',
  --     },
  --
  --     -- Default list of enabled providers defined so that you can extend it
  --     -- elsewhere in your config, without redefining it, due to `opts_extend`
  --     sources = {
  --       default = { 'lsp', 'path', 'snippets', 'buffer', 'copilot' },
  --       providers = {
  --         copilot = {
  --           name = 'copilot',
  --           module = 'blink-cmp-copilot',
  --           score_offset = 100,
  --           async = true,
  --         },
  --       },
  --     },
  --   },
  --   opts_extend = { 'sources.default' },
  -- },
  --
  {
    'zbirenbaum/copilot-cmp',
    config = function()
      require('copilot_cmp').setup()
    end,
  },

  {
    'zbirenbaum/copilot.lua',
    cmd = 'Copilot',
    event = 'InsertEnter',
    config = function()
      require('copilot').setup {
        suggestion = { enabled = false },
        panel = { enabled = false },
      }
    end,
  },

  {
    'samesense/snakemake.nvim',
    config = function()
      require 'snakemake'
      vim.keymap.set('n', '<Leader>o', function()
        require('snakemake').open_and_insert()
      end)
    end,
  },

  {
    'rachartier/tiny-glimmer.nvim',
    event = 'TextYankPost',
    opts = {
      enabled = true,
      default_animation = 'fade',
      refresh_interval_ms = 6,
      animations = {
        fade = {
          max_duration = 250,
          chars_for_max_duration = 10,
        },
        bounce = {
          max_duration = 500,
          chars_for_max_duration = 20,
          oscillation_count = 1,
        },
        left_to_right = {
          max_duration = 350,
          chars_for_max_duration = 40,
          lingering_time = 50,
        },
        pulse = {
          max_duration = 400,
          chars_for_max_duration = 15,
          pulse_count = 2,
          intensity = 1.2,
        },
        rainbow = {
          max_duration = 600,
          chars_for_max_duration = 20,
        },
      },
    },
  },

  { 'raivivek/nextflow.vim' },

  {
    'stevearc/conform.nvim',
    opts = {},
    config = function()
      require('conform').setup {
        format_on_save = {
          -- These options will be passed to conform.format()
          timeout_ms = 500,
          lsp_format = 'fallback',
        },
        formatters_by_ft = {
          lua = { 'stylua' },
          -- Conform will run multiple formatters sequentially
          python = { 'isort', 'black' },
          snakemake = { 'snakefmt' },
          -- You can customize some of the format options for the filetype (:help conform.format)
          rust = { 'rustfmt' },
        },
      }
    end,
  },
}
