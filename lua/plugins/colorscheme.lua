local keys = {
  { "<leader>uC", LazyVim.pick("colorscheme", { enable_preview = true }), desc = "Colorscheme with preview" },
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
      colorscheme = "rose-pine",
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
    "rose-pine/neovim",
    keys = keys,
    name = "rose-pine",
    opts = {
      styles = { italic = false },
      groups = {
        border = "surface",
      },
      highlight_groups = {
        -- Keyword = { bold = false, fg = "love" },
        -- String = { bold = false, fg = "subtle" },
        Comment = { bold = false, fg = "muted" },
        -- ["@variable"] = { bold = false, fg = "gold" },
        ["@keyword.return"] = { bold = false, fg = "love" },
        ["@keyword.repeat"] = { bold = false, fg = "love" },
        ["@keyword.conditional"] = { bold = false, fg = "love" },
        ["@keyword.operator"] = { bold = true, fg = "love" },
        ["@lsp.type.keyword"] = { bold = true, fg = "love" },
        ["@lsp.type.operator"] = { bold = true, fg = "love" },
        ["@punctuation.special"] = { fg = "pine" },
        ["@punctuation.delimiter"] = { fg = "rose" },
        ["@variable.builtin"] = { bold = false, fg = "pine" },
      },
    },
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
