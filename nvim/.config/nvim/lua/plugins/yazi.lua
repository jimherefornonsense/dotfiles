return {
  "mikavilpas/yazi.nvim",
  lazy = true,
  init = function()
    -- Disable netrw before startup so Yazi can hijack directory opens cleanly.
    vim.g.loaded_netrwPlugin = 1
  end,
  keys = {
    -- open yazi in at the current file
    {
      "<leader>e",
      "<cmd>Yazi<cr>",
      desc = "Open Yazi at current file",
    },
    -- open yazi in the current working directory
    {
      "<leader>E",
      "<cmd>Yazi cwd<cr>",
      desc = "Open Yazi at cwd",
    },
  },
  opts = {
    -- plugin options go here
    open_for_directories = true, -- open Yazi instead of netrw
    integrations = {
      grep_in_directory = "snacks.picker",
      grep_in_selected_files = "snacks.picker",
    },
    keymaps = {
      show_help = "?",
    },
  },
}
