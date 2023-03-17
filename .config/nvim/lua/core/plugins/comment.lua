require('Comment').setup({
  ---Add a space b/w comment and the line
  padding = true,
  ---Whether the cursor should stay at its position
  sticky = true,
  ---Lines to be ignored while (un)comment
  ignore = nil,
  ---LHS of toggle mappings in NORMAL mode
  toggler = {
    ---Line-comment toggle keymap
    line = 'gcc',
    ---Block-comment toggle keymap
    block = 'gbc',
  },
  ---LHS of operator-pending mappings in NORMAL and VISUAL mode
  opleader = {
    ---Line-comment keymap
    line = 'gc',
    -- Block-comment keymap
    block = 'gb',
  },
  ---LHS of extra mappings
  extra = {
    ---Add comment on the line above
    above = 'gcO',
    ---Add comment on the line below
    below = 'gco',
    ---Add comment at the end of line
    eol = 'gcA',
  },
  ---Enable keybindings
  ---NOTE: If given `false` then the plugin won't create any mappings
  mappings = {
    ---Operator-pending mapping; `gcc` `gbc` `gc[count]{motion}` `gb[count]{motion}`
    basic = true,
    ---Extra mapping; `gco`, `gcO`, `gcA`
    extra = true,
  },
  ---Function to call before (un)comment
  pre_hook = nil,
  ---Function to call after (un)comment
  post_hook = nil,
})

local keymap = vim.api.nvim_set_keymap

-- left aligned fixed size box with left aligned text
keymap("n", "<Leader>bb", "<Cmd>lua require('comment-box').lbox()<CR>", {})
keymap("v", "<Leader>bb", "<Cmd>lua require('comment-box').lbox()<CR>", {})

-- centered adapted box with centered text
keymap("n", "<Leader>bc", "<Cmd>lua require('comment-box').accbox()<CR>", {})
keymap("v", "<Leader>bc", "<Cmd>lua require('comment-box').accbox()<CR>", {})

-- centered line
keymap("n", "<Leader>bl", "<Cmd>lua require('comment-box').cline()<CR>", {})
keymap("i", "<M-l>", "<Cmd>lua require('comment-box').cline()<CR>", {})
