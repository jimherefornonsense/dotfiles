-- since this is just an example spec, don't actually load anything here and return an empty spec
-- stylua: ignore
-- if true then return {} end

return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      hidden = true,
      ignored = true,
      -- sources = {
      --   files = {
      --     hidden = true,
      --     ignored = true,
      --   }
      -- }
    }
    -- indent = { enabled = false },
  },
}
