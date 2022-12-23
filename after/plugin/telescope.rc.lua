local status, telescope = pcall(require, "telescope")
if (not status) then return end

local actions = require('telescope.actions')
local builtin = require("telescope.builtin")
local themes = require("telescope.themes")

-- setup
telescope.setup {
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close
      },
    },
  },
  pickers = {
    buffers = { theme = "dropdown", },
    oldfiles = { theme = "dropdown", },
  },
}

-- keymaps
vim.keymap.set('n', '<leader>ff', function()
  local opts = {
    hidden = true,
    no_ignore = false,
  }
  vim.fn.system('git rev-parse --is-inside-work-tree')
  if vim.v.shell_error == 0 then
    builtin.git_files(opts)
  else
    builtin.find_files(opts)
  end
end)

vim.keymap.set('n', '<leader>vv', function()
  builtin.find_files(themes.get_dropdown {
    previewer = false,
    search_dirs = { "$HOME/.config/nvim/" },
    hidden = true,
    no_ignore = false,
  })
end)

vim.keymap.set('n', '<leader>b', builtin.buffers, {})
vim.keymap.set('n', '<leader>d', builtin.diagnostics, {})
vim.keymap.set('n', '<leader>fj', builtin.jumplist, {})
vim.keymap.set('n', '<leader>fo', builtin.oldfiles, {})
vim.keymap.set('n', '<leader>fy', builtin.lsp_workspace_symbols, {})
vim.keymap.set('n', '<leader>gg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>gs', builtin.git_status, {})
vim.keymap.set('n', 'gs', builtin.grep_string, {})
