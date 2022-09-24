local keymap = vim.keymap
local cmd = vim.api.nvim_command

vim.g.mapleader = ","

keymap.set('n', '<leader>1', ':split $MYVIMRC<CR>')
keymap.set('n', ']b', ':bnext<cr>')
keymap.set('n', '[b', ':bprev<cr>')
keymap.set('n', '<leader>q', ':bp|bd#<CR>')
keymap.set('n', ']t', ':tabn<cr>')
keymap.set('n', '[t', ':tabp<cr>')
keymap.set('n', '<leader><leader>', ':b#<CR>')

cmd('autocmd BufWritePre *.tsx,*.ts,*.jsx,*.js EslintFixAll')
