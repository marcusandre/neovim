-- Testing

local status, packer = pcall(require, "packer")

if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'

  -- util
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  -- lsp
  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'saadparwaiz1/cmp_luasnip' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-nvim-lua' },

      -- Snippets
      { 'L3MON4D3/LuaSnip' },
      { 'rafamadriz/friendly-snippets' },
    }
  }

  use 'j-hui/fidget.nvim'

  -- treesitter
  use('nvim-treesitter/playground')

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
  }

  -- git
  use 'junegunn/gv.vim'
  use 'mhinz/vim-signify'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-rhubarb'

  -- ui
  use 'lukas-reineke/indent-blankline.nvim'
  use 'nvim-lualine/lualine.nvim'

  -- workflow
  use 'mbbill/undotree'
  use 'tpope/vim-commentary'
  use 'tpope/vim-projectionist'
  use 'tpope/vim-repeat'
  use 'tpope/vim-sleuth'
  use 'tpope/vim-surround'
  use 'vim-test/vim-test'
  -- use('theprimeagen/harpoon')
  -- use 'sgur/vim-editorconfig'

  use {
    'mrjones2014/dash.nvim',
    run = 'make install',
  }

  -- themes
  use 'archseer/colibri.vim'
  use 'arcticicestudio/nord-vim'
  use 'cocopon/iceberg.vim'
  use 'f-person/auto-dark-mode.nvim'
  use 'folke/tokyonight.nvim'
end)
