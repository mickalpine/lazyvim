return {
  -- Set the active color theme
  {
    "LazyVim/LazyVim",
    lazy = false,
    priority = 1000,
    opts = {
      colorscheme = "nightfox",
    },
  },

  { "ellisonleao/gruvbox.nvim", lazy = false },
  { "EdenEast/nightfox.nvim", lazy = false },
  { "bluz71/vim-nightfly-colors", lazy = false },
  { "haishanh/night-owl.vim", lazy = false },
  { "arturgoms/moonbow.nvim", lazy = false },
  { "Shatur/neovim-ayu", lazy = false },

  {
    "folke/tokyonight.nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000,
  },
}
