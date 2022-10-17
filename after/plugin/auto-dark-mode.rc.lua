local status, auto_dark_mode = pcall(require, "auto-dark-mode")
if (not status) then return end

vim.api.nvim_set_option('background', 'dark')
vim.cmd('colorscheme iceberg')

auto_dark_mode.setup({
  ---@diagnostic disable-next-line: assign-type-mismatch
  auto_dark_mode = 1000,
  set_dark_mode = function()
    vim.api.nvim_set_option('background', 'dark')
    vim.cmd('colorscheme iceberg')
  end,
  set_light_mode = function()
    vim.api.nvim_set_option('background', 'light')
    vim.cmd('colorscheme iceberg')
  end,
})

auto_dark_mode.init()
