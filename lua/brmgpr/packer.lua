vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  }

  use { 'nvim-treesitter/playground' }

  use { 'theprimeagen/harpoon' }

  use { 'mbbill/undotree' }

  use { 'tpope/vim-fugitive' }

  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    requires = {
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},
      {'neovim/nvim-lspconfig'},
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'L3MON4D3/LuaSnip'},
    }
  }

  use 'neovim/nvim-lspconfig'
  use 'kabouzeid/nvim-lspinstall'

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  use({
    "kylechui/nvim-surround",
    tag = "*", 
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  })

  -- Comment lines
  use "terrortylor/nvim-comment"

  -- Position sticky for function declarations
  use {
    'nvim-treesitter/nvim-treesitter-context'
  }

  -- Multi plugin for multiple cursors
  use { 'mg979/vim-visual-multi', branch = 'master' }

  -- Icons
  use 'nvim-tree/nvim-web-devicons'

  -- File explorer
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', 
    },
  }

  -- Autoclose characters
  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }

  -- Auto close pairs
  use {
    "windwp/nvim-ts-autotag"
  }

  -- Tabs
  use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}

  -- Color scheme
  use {
    "folke/tokyonight.nvim",
  }

  -- Terminal
  use {"akinsho/toggleterm.nvim", tag = '*', config = function()
    require("toggleterm").setup()
  end}
end)
