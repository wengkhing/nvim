-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>af", function()
  vim.cmd("!biome check --apply " .. vim.fn.expand("%"))
  -- vim.cmd("e!") -- Reload file
end, { desc = "Biome: Format and fix file" })

-- Toggle code companion
vim.keymap.set("n", "<leader>ac", function()
  require("codecompanion").toggle()
end, { desc = "CodeCompanion: Chat Toggle" })

-- Arrow key window navigation
vim.keymap.set("n", "<C-w><Up>", "<C-w>k", { desc = "Move to window above" })
vim.keymap.set("n", "<C-w><Down>", "<C-w>j", { desc = "Move to window below" })
vim.keymap.set("n", "<C-w><Left>", "<C-w>h", { desc = "Move to left window" })
vim.keymap.set("n", "<C-w><Right>", "<C-w>l", { desc = "Move to right window" })
vim.keymap.set("n", "<leader><space>", LazyVim.pick("files", { root = false }), { desc = "Find Files (cwd)" })
