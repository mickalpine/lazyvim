return {
  {
    "iamcco/markdown-preview.nvim",
    ft = "markdown",
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      highlight = {
        disable = { "markdown" },
      },
    },
  },
}
