return {
  {
    "folke/sidekick.nvim",
    opts = {
      nes = { enabled = false },
      cli = {
        mux = {
          backend = "zellij",
          enabled = true,
        },
        win = {
          layout = "right",
          float = {
            width = 0.9,
            height = 0.9,
            border = "single",
          },
        },
      },
    },
    keys = {
      -- {
      --   "<c-\\>",
      --   function()
      --     local state = require("sidekick.cli.state")
      --     state.with(function(s)
      --       if s and s.terminal and s.terminal.opts then
      --         s.terminal.opts.layout = s.terminal.opts.layout == "float" and "right" or "float"
      --         if s.terminal:is_open() then
      --           s.terminal:hide()
      --         end
      --         s.terminal:show()
      --         s.terminal:focus()
      --       end
      --     end)
      --   end,
      --   mode = { "n", "t" },
      --   desc = "Toggle Sidekick layout"
      -- },
      {
        "<c-\\>",
        function()
          local state = require("sidekick.cli.state")
          state.with(function(s)
            if s and s.terminal and s.terminal:is_open() then
              local o = s.terminal.opts
              if o.layout == "float" then
                o.float = o.float or {}
                o.float.width = (o.float.width or 0.9) == 1 and 0.9 or 1
              else
                o.split = o.split or {}
                o.split.width = (o.split.width or 80) > 80 and 80 or 160
              end
              s.terminal:hide()
              s.terminal:show()
              s.terminal:focus()
              vim.cmd.stopinsert()
            end
          end)
        end,
        mode = { "n", "t" },
        desc = "Toggle Sidekick width",
      },
    },
  },
}
