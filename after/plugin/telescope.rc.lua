local status, telescope = pcall(require, "telescope")
if (not status) then return end

local actions = require('telescope.actions')
local builtin = require("telescope.builtin")

-- setup
telescope.setup {
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close
      },
    },
  },
}

-- keymaps
vim.keymap.set('n', '<leader>f', function()
  builtin.find_files({
    no_ignore = false,
    hidden = true
  })
end)
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>F', ":Telescope file_browser<CR>")
vim.keymap.set('n', '<leader>r', function()
  builtin.live_grep()
end)
-- vim.keymap.set('n', '<leader>t', function()
--   builtin.help_tags()
-- end)
vim.keymap.set('n', '\\\\', function()
  builtin.buffers()
end)
-- vim.keymap.set('n', ',,', function()
--   builtin.resume()
-- end)
vim.keymap.set('n', '<leader>d', function()
  builtin.diagnostics()
end)
