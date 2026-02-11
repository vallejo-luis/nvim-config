require("baseConf.vimSettings")
require("baseConf.keyBandings")

local vim = vim
local Plug = vim.fn["plug#"]

vim.call('plug#begin')
  -- Dependency's
  Plug('nvim-lua/plenary.nvim')
  Plug('nvim-tree/nvim-web-devicons')
  -- Lsp
  Plug('neovim/nvim-lspconfig')
  -- Completition
  -- Plug('hrsh7th/cmp-nvim-lsp')
  -- Plug('hrsh7th/cmp-buffer')
  -- Plug('hrsh7th/cmp-path')
  -- Plug('hrsh7th/cmp-cmdline')
  -- Plug('hrsh7th/nvim-cmp')
  -- Snippets
  -- Plug('L3MON4D3/LuaSnip')
  -- Plug('saadparwaiz1/cmp_luasnip')
  -- Tree-sitter
  Plug('nvim-treesitter/nvim-treesitter', { ['do'] = 'TSUpdate' })
  -- Color Theme
  -- Plug('EdenEast/nightfox.nvim')
  Plug('rose-pine/neovim', { ['as'] = 'rose-pine' })
  -- AI
  -- Plug('Exafunction/codeium.vim', { ['branch'] = 'main' })
  -- File explorer
  Plug('nvim-telescope/telescope.nvim', { ['tag'] = '*' })
  -- Status line
  Plug('nvim-lualine/lualine.nvim')
vim.call('plug#end')

vim.cmd("colorscheme rose-pine-moon")
require("lsp.conf")
require("treeSitter.conf")
require("icons.conf")
require("telescope.conf")
require("statusLine.conf")
