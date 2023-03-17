require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the five listed parsers should always be installed)
  ensure_installed = { "c", "lua", "vim", "help", "arduino" },
  indent = { enable = true},
  sync_install = false,

  auto_install = true,

  ignore_install = { "javascript" },
  
  context_commentstring = {
    enable = true
  },

  highlight = {
    enable = true,
  },
}

