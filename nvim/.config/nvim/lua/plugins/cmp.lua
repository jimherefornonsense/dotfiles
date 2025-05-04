return {
  {
    "saghen/blink.cmp",
    dependencies = {
      "rafamadriz/friendly-snippets",
      "xzbdmw/colorful-menu.nvim",
    },
    ---@param _ any
    ---@param opts blink.cmp.Config
    opts = function(_, opts)
      opts.sources.default = { "lsp", "path", "snippets", "buffer" }
      opts.completion = {
        ghost_text = { enabled = true, show_with_menu = false },
        accept = { auto_brackets = { enabled = true } },
        list = { selection = { auto_insert = false } },

        documentation = {
          auto_show = true,
          auto_show_delay_ms = 250,
          treesitter_highlighting = true,
          window = { border = "rounded" },
        },

        menu = {
          auto_show = false,
          border = "rounded",
          draw = {
            columns = {
              { "kind_icon" },
              { "label", gap = 1 },
            },
            components = {
              label = {
                text = function(ctx)
                  return require("colorful-menu").blink_components_text(ctx)
                end,
                highlight = function(ctx)
                  return require("colorful-menu").blink_components_highlight(ctx)
                end,
              },
            },
          },
        },
      }

      opts.signature = {
        enabled = true,
        window = { border = "rounded" },
      }
      -- Adapted from the default blink LSP configuration: https://github.com/Saghen/blink.cmp/blob/9f32ef5c3bb44f943238bbcde0c467936475f177/lua/blink/cmp/config/sources.lua#L63
      opts.sources.providers = {
        path = {
          min_keyword_length = 0,
        },
        snippets = {
          min_keyword_length = 2,
        },
        buffer = {
          min_keyword_length = 5,
          max_items = 5,
        },
      }

      opts.fuzzy = { implementation = "prefer_rust_with_warning" }
    end,
  },
}
