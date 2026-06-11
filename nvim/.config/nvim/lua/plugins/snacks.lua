return {
  "folke/snacks.nvim",
  keys = {
    { "<leader>e", false },
    { "<leader>E", false },
    { "<leader>fe", false },
    { "<leader>fE", false },
  },
  opts = {
    explorer = {
      enabled = false,
      replace_netrw = false,
    },
    picker = {
      sources = {
        files = {
          hidden = true,
          ignored = true,
        },
        grep = {
          hidden = true,
          ignored = true,
        },
      },
      formatters = {
        file = {
          truncate = 100,
        },
      },
      win = {
        input = {
          keys = {
            ["<Down>"] = { "history_forward", mode = { "i", "n" } },
            ["<Up>"] = { "history_back", mode = { "i", "n" } },
          },
        },
      },
    },
    -- indent = { enabled = false },
  },
}
