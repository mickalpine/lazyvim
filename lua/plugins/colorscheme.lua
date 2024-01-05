local Util = require("lazyvim.util")
return {
  {
    "LazyVim/LazyVim",
    lazy = false,
    priority = 1000,
    opts = {
      colorscheme = "tundra",
    },
  },

  { "sam4llis/nvim-tundra" },

  {
    "catppuccin/nvim",
    name = "catppuccin",
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
    keys = {
      { "<leader>uC", Util.telescope("colorscheme", { enable_preview = true }), desc = "Colorscheme with preview" },
    },
  },

  {
    "rebelot/kanagawa.nvim",
    keys = {
      { "<leader>uC", Util.telescope("colorscheme", { enable_preview = true }), desc = "Colorscheme with preview" },
    },
    opts = {
      keywordStyle = { italic = false, bold = true },
      typeStyle = { italic = true },
      dimInactive = false,
      colors = { theme = { all = { ui = { bg_gutter = "none" } } } },
    },
  },

  {
    "kvrohit/mellow.nvim",
    keys = {
      { "<leader>uC", Util.telescope("colorscheme", { enable_preview = true }), desc = "Colorscheme with preview" },
    },
    config = function()
      vim.g.mellow_italic_comments = false
      vim.g.mellow_bold_keywords = true
    end,
  },
}
