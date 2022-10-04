local status, auto_dark_mode = pcall(require, "auto-dark-mode")
if (not status) then return end

vim.api.nvim_set_option('background', 'dark')

auto_dark_mode.setup({
  ---@diagnostic disable-next-line: assign-type-mismatch
  auto_dark_mode = 1000,
  set_dark_mode = function()
    require('rose-pine').setup({
      dark_variant = 'moon',
    })

    vim.api.nvim_set_option('background', 'dark')
  end,
  set_light_mode = function()
    require('rose-pine').setup({
      dark_variant = nil,
    })

    vim.api.nvim_set_option('background', 'light')
  end,
})

vim.cmd [[colorscheme rose-pine]]

auto_dark_mode.init()
