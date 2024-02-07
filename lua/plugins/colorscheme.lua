local Util = require("lazyvim.util")
local keys = {
  { "<leader>uC", Util.telescope("colorscheme", { enable_preview = true }), desc = "Colorscheme with preview" },
}
local nordic_colors = {
  -- Blacks. Not in base Nord.
  black0 = "#191D24",
  black1 = "#1E222A",
  -- Slightly darker than bg.  Very useful for certain popups
  black2 = "#222630",
}

return {
  {
    "LazyVim/LazyVim",
    lazy = false,
    priority = 1000,
    opts = {
      colorscheme = "tundra",
    },
  },

  {
    "sam4llis/nvim-tundra",
    keys = keys,
    branch = "dev",
    commit = "1173df4c8c0fdf0fdfc24aa2d04fd1965204a97e",
  },

  {
    "AlexvZyl/nordic.nvim",
    keys = keys,
    opts = {
      bold_keywords = true,
      reduced_blue = false,
      swap_backgrounds = true,
      override = {
        Normal = {
          bg = nordic_colors.black2,
        },
      },
    },
  },

  {
    "folke/tokyonight.nvim",
    keys = keys,
    opts = { style = "moon" },
  },

  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    ft = "markdown",
    keys = keys,
    opts = {
      no_italic = true,
      integrations = {
        notify = true,
        mini = true,
        leap = true,
        mason = true,
        noice = true,
        symbols_outline = true,
        which_key = true,
      },
    },
  },

  {
    "rebelot/kanagawa.nvim",
    keys = keys,
    opts = {
      keywordStyle = { italic = false, bold = true },
      typeStyle = { italic = true },
      dimInactive = false,
      colors = { theme = { all = { ui = { bg_gutter = "none" } } } },
    },
  },

  {
    "kvrohit/mellow.nvim",
    keys = keys,
    config = function()
      vim.g.mellow_italic_comments = false
      vim.g.mellow_bold_keywords = true
    end,
  },
}
