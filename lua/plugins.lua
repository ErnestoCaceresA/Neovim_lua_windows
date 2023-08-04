local status, packer = pcall(require, 'packer')
if (not status) then
  print("Packer is not installed")
  return
end


vim.cmd [[packadd packer.nvim]]


-- PLUGINS INSTALADOS

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }
  }
  use 'hoob3rt/lualine.nvim' -- StatusLine
  use 'neovim/nvim-lspconfig' -- LSP
  use 'onsails/lspkind-nvim' -- vscode-like pictograms
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp' --completion
  use 'L3MON4D3/LuaSnip' -- Snippet enggine
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'} --Treesitter windows
  use 'windwp/nvim-autopairs' --autopairs
  use 'windwp/nvim-ts-autotag' --autotag
  use 'nvim-lua/plenary.nvim' -- Common utilities
  use 'nvim-telescope/telescope.nvim' -- telescope
  use 'nvim-telescope/telescope-file-browser.nvim' --telescope file browser
  use 'kyazdani42/nvim-web-devicons' --file icons
  use 'akinsho/nvim-bufferline.lua' --bufferline
  use 'norcalli/nvim-colorizer.lua' -- colorizer
  use 'glepnir/lspsaga.nvim' -- LSP UI's (hover information)
  use 'jose-elias-alvarez/null-ls.nvim' -- use neovim as a language server to inject LSP diagnostics, code actions, and more via lua
  use 'MunifTanjim/prettier.nvim' -- Prettier plugin for Neovim's built-in LSP client
  use 'lewis6991/gitsigns.nvim' -- git signs
  use 'dinhhuy258/git.nvim' -- For git blame & browse
  use 'williamboman/mason.nvim' -- mason para mas servidores lsp como tailwind
  use 'williamboman/mason-lspconfig.nvim'
  use 'VonHeikemen/lsp-zero.nvim' --LSP
  use 'nvim-tree/nvim-tree.lua' --nvim tree
  use 'numToStr/Comment.nvim' --comments
end)
