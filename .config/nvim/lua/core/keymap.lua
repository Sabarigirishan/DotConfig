vim.g.mapleader = " "                                   -- default leader key
vim.keymap.set("n", "<leader>fff", vim.cmd.Ex)          -- open nvim internal file manager
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])        -- global yank from vim
vim.keymap.set({"n", "v"}, "<leader>p", [["+p]])        -- global paste into vim
vim.keymap.set("n", "<leader>q", "<cmd>:q<CR>")         -- close window
vim.keymap.set("n", "<leader>w", "<cmd>:wq<CR>")        -- write and close
vim.keymap.set("n", "<leader>W", function()             -- source output
    -- vim.cmd("w")
    vim.cmd("so")
end)
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })   -- make normal script executable
