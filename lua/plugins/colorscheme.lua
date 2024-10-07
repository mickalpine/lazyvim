local keys = {
  { "<leader>uC", LazyVim.pick("colorscheme", { enable_preview = true }), desc = "Colorscheme with preview" },
}

return {
  {
    "LazyVim/LazyVim",
    lazy = false,
    priority = 1000,
    opts = {
      colorscheme = "kanagawa",
    },
  },

  {
    "sam4llis/nvim-tundra",
    keys = keys,
    branch = "dev",
    commit = "1173df4c8c0fdf0fdfc24aa2d04fd1965204a97e",
  },

  {
    "sainnhe/gruvbox-material",
    keys = keys,
    config = function()
      vim.g.gruvbox_material_transparent_background = 0
      vim.g.gruvbox_material_foreground = "mix"
      vim.g.gruvbox_material_background = "hard" -- soft, medium, hard
      vim.g.gruvbox_material_ui_contrast = "high" -- The contrast of line numbers, indent lines, etc.
      vim.g.gruvbox_material_float_style = "bright" -- Background of floating windows
      vim.g.gruvbox_material_statusline_style = "material"
      vim.g.gruvbox_material_cursor = "auto"

      -- vim.g.gruvbox_material_colors_override = { bg0 = '#000000' } -- #0e1010
      -- vim.g.gruvbox_material_colors_override = { bg0 = "#121212" }
      -- vim.g.gruvbox_material_better_performance = 1

      -- vim.cmd.colorscheme("gruvbox-material")
    end,
  },

  {
    "folke/tokyonight.nvim",
    keys = keys,
    opts = { style = "night" },
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
        ["@operator"] = { bold = true, fg = "love" },
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
