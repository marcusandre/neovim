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

lsp.set_preferences({
  suggest_lsp_servers = false,
  sign_icons = {
    error = 'E',
    warn = 'W',
    hint = 'H',
    info = 'I'
  }
})

lsp.configure('sumneko_lua', {
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' }
      }
    }
  }
})

lsp.on_attach(function(client, bufnr)
  local opts = { buffer = bufnr, remap = false }

  if client.name == 'eslint' then
    vim.api.nvim_create_autocmd('BufWritePre', {
      pattern = { '*.tsx', '*.ts', '*.jsx', '*.js' },
      command = 'silent! EslintFixAll',
      group = vim.api.nvim_create_augroup('eslint-fmt', {}),
    })
  end

  vim.keymap.set('n', '<leader>r', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
  vim.keymap.set('n', '<leader>e', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
  vim.keymap.set('n', '<leader>2', '<cmd>LspZeroFormat<cr>', opts)
end)

lsp.setup()
