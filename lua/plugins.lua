-- Testing

local status, packer = pcall(require, "packer")

if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'

  -- lsp
  use 'neovim/nvim-lspconfig'

  use 'mhinz/vim-signify'
  use 'nvim-lualine/lualine.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'vim-test/vim-test'
  use 'sgur/vim-editorconfig'
  use 'tpope/vim-commentary'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-projectionist'
  use 'tpope/vim-repeat'
  use 'tpope/vim-surround'

  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  -- themes
  use 'NLKNguyen/papercolor-theme'
  use 'archseer/colibri.vim'
  use 'arcticicestudio/nord-vim'
  use 'f-person/auto-dark-mode.nvim'
end)
