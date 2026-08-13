-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
-- CTRL-q (insert-mode) manually triggers Amazon Q completion (inline suggestions).

vim.keymap.set("n", "q", "<Nop>", { desc = "Disable single-key macro recording" })
vim.keymap.set("n", "qq", function()
  local keys = vim.fn.reg_recording() == "" and "qq" or "q"
  vim.api.nvim_feedkeys(keys, "n", false)
end, { desc = "Toggle macro recording in register q" })
