return {
  dir = vim.fn.stdpath 'config' .. '/lua/custom/plugins/savitsky',
  name = 'savitsky',
  lazy = false,
  priority = 1000,
  dependencies = { 'catppuccin/nvim' },
  config = function()
    require('savitsky').load 'bull' -- default variant
  end,
}
