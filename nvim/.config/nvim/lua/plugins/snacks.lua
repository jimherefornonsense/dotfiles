local nvim_cwd = vim.fn.getcwd()

local function toggle_terminal()
  Snacks.terminal.focus(nil, { cwd = nvim_cwd })
end

return {
  "folke/snacks.nvim",
  keys = {
    { "<leader>e", false },
    { "<leader>E", false },
    { "<leader>fe", false },
    { "<leader>fE", false },
    { "<leader>ft", toggle_terminal, desc = "Terminal (Neovim CWD)" },
    { "<leader>fT", toggle_terminal, desc = "Terminal (Neovim CWD)" },
    { "<c-/>", toggle_terminal, mode = { "n", "t" }, desc = "Terminal (Neovim CWD)" },
    { "<c-_>", toggle_terminal, mode = { "n", "t" }, desc = "which_key_ignore" },
  },
  opts = {
    explorer = {
      enabled = false,
      replace_netrw = false,
    },
    terminal = {
      cwd = nvim_cwd,
      win = {
        position = "float",
        width = 0.8,
        height = 0.8,
        border = "rounded",
        keys = {
          normal_mode = {
            "<C-q>",
            function()
              vim.cmd.stopinsert()
            end,
            mode = "t",
            desc = "Enter Normal mode",
          },
        },
        wo = {
          winhighlight = "Normal:TerminalFocused,NormalNC:TerminalUnfocused,NormalFloat:TerminalFocused,EndOfBuffer:TerminalFocused",
        },
      },
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
