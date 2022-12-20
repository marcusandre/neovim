local status, lsp = pcall(require, "lsp-zero")
if (not status) then return end

lsp.preset('recommended')

lsp.nvim_workspace()

lsp.ensure_installed({
  'eslint',
  'rust_analyzer',
  'sumneko_lua',
  'tsserver'
})

lsp.on_attach(function(_, bufnr)
  local opts = {buffer = bufnr, remap = false}

  vim.keymap.set('n', '<leader>r', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
  vim.keymap.set('n', '<leader>e', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
end)

lsp.setup()
