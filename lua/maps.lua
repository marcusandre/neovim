local keymap = vim.keymap

vim.g.mapleader = " "

keymap.set('n', '<leader>1', ':split $MYVIMRC<CR>')
keymap.set("n", "Q", "<nop>")
keymap.set('n', ']b', ':bnext<cr>')
keymap.set('n', '[b', ':bprev<cr>')
keymap.set('n', '<leader>q', ':bp|bd#<CR>')
keymap.set('n', ']t', ':tabn<cr>')
keymap.set('n', '[t', ':tabp<cr>')
keymap.set('n', '<leader><leader>', ':b#<CR>')
keymap.set('n', 'j', 'gj');
keymap.set('n', 'k', 'gk');
keymap.set('i', 'kj', '<ESC>');
keymap.set('i', 'jk', '<ESC>');

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

