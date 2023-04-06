vim.g.mapleader = " "                              -- default leader key
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]]) -- global yank from vim
vim.keymap.set({ "n", "v" }, "<leader>p", [["+p]]) -- global paste into vim
vim.keymap.set("n", "<leader>q", "<cmd>:q<CR>")    -- close window
vim.keymap.set("n", "<leader>w", "<cmd>:wq<CR>")   -- write and close
vim.keymap.set("n", "<leader>W", function()        -- source output
  -- vim.cmd("w")
  vim.cmd("so")
end)
vim.keymap.set("n", "<C-e>", "<cmd>:NvimTreeToggle<CR>")

-- " Change these as desired
-- nnoremap <buffer> <leader>aa <cmd>ArduinoAttach<CR>
-- nnoremap <buffer> <leader>am <cmd>ArduinoVerify<CR>
-- nnoremap <buffer> <leader>au <cmd>ArduinoUpload<CR>
-- nnoremap <buffer> <leader>ad <cmd>ArduinoUploadAndSerial<CR>
-- nnoremap <buffer> <leader>ab <cmd>ArduinoChooseBoard<CR>
-- nnoremap <buffer> <leader>ap <cmd>ArduinoChooseProgrammer<CR>

vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true }) -- make normal script executable
