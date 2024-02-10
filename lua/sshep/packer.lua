-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.3',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

-- colors
-- use({
--	"folke/tokyonight.nvim",
--	lazy = false,
--	priority = 1000,
--	opts = {},
--})
use('navarasu/onedark.nvim')

use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

use('nvim-treesitter/playground')

use('nvim-lua/plenary.nvim')

use('ThePrimeagen/harpoon')
use('mbbill/undotree')
use('tpope/vim-fugitive')
use('lewis6991/gitsigns.nvim')
use('tpope/vim-rhubarb')

use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v2.x',
  requires = {
	  -- LSP Support
	  {'neovim/nvim-lspconfig'},             -- Required
	  {'williamboman/mason.nvim'},           -- Optional
	  {'williamboman/mason-lspconfig.nvim'}, -- Optional

	  -- Autocompletion
	  {'hrsh7th/nvim-cmp'},     -- Required
	  {'hrsh7th/cmp-nvim-lsp'}, -- Required
	  {'L3MON4D3/LuaSnip'},     -- Required
  }
}

use({
      "folke/trouble.nvim",
      config = function()
          require("trouble").setup {
              icons = false,
              -- your configuration comes here
              -- or leave it empty to use the default settings
              -- refer to the configuration section below
          }
      end
  })

  use("theprimeagen/refactoring.nvim");
  use("nvim-treesitter/nvim-treesitter-context");
  use("folke/zen-mode.nvim");
  -- use("github/copilot.vim");
  use("eandrju/cellular-automaton.nvim");
  -- use("laytan/cloak.nvim");
  -- use {
  --     "windwp/nvim-autopairs",
  --     config = function() require("nvim-autopairs").setup {} end
  -- }

  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

   use('ThePrimeagen/git-worktree.nvim')
   use('nvim-lua/popup.nvim')
   use('nvim-lua/plenary.nvim')
   use('nvim-telescope/telescope-fzy-native.nvim')

end)
