local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  -- This section is for text based extension
  use 'Vonr/align.nvim'                             -- this if for align feature
  use 'm4xshen/autoclose.nvim'                      -- this is for automatic close of pair characters
  use 'akinsho/bufferline.nvim'                     -- this is for tabs in nvim
  use 'mbbill/undotree'                             -- this is for better undo support

  -- This section is for comment support in nvim
  use 'LudoPinelli/comment-box.nvim'                -- this is for comment box in nvim
  use 'numToStr/Comment.nvim'                       -- this is for simple comment
  use 'JoosepAlviste/nvim-ts-context-commentstring' -- this is for smart comment using treesitter context

  -- This section if for aesthetics
  use 'theprimeagen/harpoon'                        -- this is for jumping to fav file
  use 'lukas-reineke/indent-blankline.nvim'         -- this if for better indent management
  use 'nvim-lualine/lualine.nvim'                   -- this is for bottom bar in neovim
  use 'catppuccin/nvim'                             -- this is the default catppuccin color theme for nvim
  use 'nvim-tree/nvim-web-devicons'                 -- this is for icons in nvim
  use 'xiyaowong/transparent.nvim'                  -- this if for transparency

  -- this section is for IDE like features
  use 'nvim-treesitter/nvim-treesitter'             -- this is for better color support to text
  use 'wbthomason/packer.nvim'                      -- this is the main package manager in nvim
  use 'stevearc/vim-arduino'                        -- this is for arduino support
  use 'tpope/vim-fugitive'                          -- this is for git intigration
  use 'folke/which-key.nvim'                        -- this is for showing shortcuts

  -- this section if for LSP setup in neovim
  use 'hrsh7th/cmp-buffer'                          -- this if for LSP setup in neovim
  use 'hrsh7th/cmp-cmdline'                         -- this if for LSP setup in neovim
  use 'hrsh7th/cmp-nvim-lsp'                        -- this if for LSP setup in neovim
  use 'hrsh7th/cmp-path'                            -- this if for LSP setup in neovim
  use 'folke/lsp-trouble.nvim'                      -- this is for dedicated panel to show errors
  use 'williamboman/mason.nvim'                     -- this if for LSP setup in neovim
  use 'williamboman/mason-lspconfig.nvim'           -- this if for LSP setup in neovim
  use 'neovim/nvim-lspconfig'                       -- this if for LSP setup in neovim
  use 'hrsh7th/nvim-cmp'                            -- this if for LSP setup in neovim

  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })

  use { 'nvim-tree/nvim-tree.lua',
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0', -- or, branch = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  if packer_bootstrap then
    require('packer').sync()
  end
end)
