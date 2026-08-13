-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

local terminal_focus_group = vim.api.nvim_create_augroup("terminal_focus_background", { clear = true })

local function set_terminal_highlights()
  vim.api.nvim_set_hl(0, "TerminalFocused", { bg = "#121212" })
  vim.api.nvim_set_hl(0, "TerminalUnfocused", { bg = "#303030" })
end

set_terminal_highlights()

vim.api.nvim_create_autocmd("ColorScheme", {
  group = terminal_focus_group,
  callback = set_terminal_highlights,
})
