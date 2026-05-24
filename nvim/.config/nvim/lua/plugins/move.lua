return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        move_analyzer = {
          cmd = { os.getenv("HOME") .. "/.sui/bin/move-analyzer" },
          mason = false,
        },
      },
    },
  },

  {
    "yanganto/move.vim",
    branch = "sui-move",
  },
}
