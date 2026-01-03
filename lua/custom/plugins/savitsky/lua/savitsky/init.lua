local M = {}

local registry = require 'savitsky.registry'

vim.api.nvim_create_user_command('SavitskyList', function()
  for name, _ in pairs(registry) do
    print(name)
  end
end, {})

vim.api.nvim_create_user_command('SavitskyLoad', function(opts)
  require('savitsky').load(opts.args)
end, {
  nargs = 1,
  complete = function()
    local registry = require 'savitsky.registry'
    return vim.tbl_keys(registry)
  end,
})

function M.setup()
  -- optional: nothing required here, but keep for API symmetry
end

function M.load(name)
  local theme = registry[name]
  if not theme then
    vim.notify('Savitsky: unknown theme ' .. name, vim.log.levels.ERROR)
    return
  end

  local cp = require 'catppuccin'

  cp.setup {
    flavour = theme.flavour,
    color_overrides = {
      [theme.flavour] = theme.palette,
    },
    highlight_overrides = {
      [theme.flavour] = theme.highlights,
    },
  }

  vim.cmd('colorscheme catppuccin-' .. theme.flavour)
end

return M
