return {
  {
    "saghen/blink.cmp",
    dependencies = {
      "rafamadriz/friendly-snippets",
      "xzbdmw/colorful-menu.nvim",
    },

    opts = {
      keymap = {
        preset = "super-tab",
      },

      completion = {
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
      },

      signature = {
        enabled = true,
        window = { border = "rounded" },
      },

      sources = {
        providers = {
          lsp = {
            -- Filter out 'text' items from the LSP provider (use 'buffer' provider for that).
            transform_items = function(_, items)
              for _, item in ipairs(items) do
                if item.kind == require("blink.cmp.types").CompletionItemKind.Snippet then
                  item.score_offset = item.score_offset - 3
                end
              end
              return vim.tbl_filter(function(item)
                return item.kind ~= require("blink.cmp.types").CompletionItemKind.Text
              end, items)
            end,
            async = true, -- Show partial results while waiting for all providers.
            timeout_ms = 200, -- Maximum time to wait before showing partial results.
            min_keyword_length = 0, -- Minimum characters that trigger the provider.
          },
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
        },
      },
    },
  },
}
