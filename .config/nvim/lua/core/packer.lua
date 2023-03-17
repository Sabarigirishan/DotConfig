
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'       -- this is the main package manager in nvim
  use 'nvim-tree/nvim-web-devicons'  -- this is for icons in nvim
  use 'theprimeagen/harpoon'         -- this is for jumping to fav file
  use 'mbbill/undotree'              -- this is for better undo support
  use 'tpope/vim-fugitive'           -- this is for git intigration
  use 'catppuccin/nvim'              -- this is the default catppuccin color theme for nvim
  use 'Vonr/align.nvim'              -- this if for align feature
  use 'LudoPinelli/comment-box.nvim' -- this is for comment box in nvim 
  use 'numToStr/Comment.nvim'        -- this is for simple comment 
  -- use 'mfussenegger/nvim-dap'
  use 'm4xshen/autoclose.nvim'      -- this is for automatic close of pair characters
  use 'akinsho/bufferline.nvim'      -- this is for tabs in nvim  
  use 'folke/which-key.nvim'        -- this is for showing shortcuts
  use 'stevearc/vim-arduino'        -- this is for arduino support
  use 'sbdchd/neoformat'            -- this is for formatting support
  use 'nvim-treesitter/nvim-treesitter'  -- this is for better color support to text
  use 'JoosepAlviste/nvim-ts-context-commentstring' -- this is for smart comment using treesitter context
  -- install without yarn or npm

  use({ "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })

use { 'nvim-tree/nvim-tree.lua',
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
}

  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'neovim/nvim-lspconfig'
--        use {
--  'VonHeikemen/lsp-zero.nvim', branch = 'v1.x',
--   requires = { 
--     --LSP Support{'neovim/nvim-lspconfig'},
--      {'williamboman/mason.nvim'},
--      {'williamboman/mason-lspconfig.nvim'},
-- --
   use 'hrsh7th/cmp-nvim-lsp'
   use 'hrsh7th/cmp-buffer'
   use 'hrsh7th/cmp-path'
   use 'hrsh7th/cmp-cmdline'
   use 'hrsh7th/nvim-cmp'
-- --     {'saadparwaiz1/cmp_luasnip'},
-- --     {'hrsh7th/cmp-nvim-lua'},
--
--      --Snippets{'L3MON4D3/LuaSnip'},
--      {'rafamadriz/friendly-snippets'},
--    }
--  }

  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.0', -- or, branch = '0.1.x',
                                   requires
  = { {'nvim-lua/plenary.nvim'} }
  }

  if packer_bootstrap then
    require('packer').sync()
  end
end)
