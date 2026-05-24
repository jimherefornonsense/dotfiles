return {
  "folke/snacks.nvim",
  opts = {
    explorer = {
      replace_netrw = false,
    },
    picker = {
      hidden = true,
      ignored = true,
      -- sources = {
      --   files = {
      --     hidden = true,
      --     ignored = true,
      --   }
      -- }
      formatters = {
        file = {
          truncate = 100,
        },
      },
    },
    -- indent = { enabled = false },
  },
}
