return {
  {
    "ray-x/go.nvim",
    dependencies = {
      "ray-x/guihua.lua",
      "neovim/nvim-lspconfig",
      "nvim-treesitter/nvim-treesitter",
    },
    config = true,
    event = "CmdlineEnter",
    ft = { "go", "gomod", "gosum", "gowork" },
  },

  {
    "olexsmir/gopher.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "nvim-treesitter/nvim-treesitter" },
    ft = { "go", "gomod", "gosum", "gowork" },
    config = true,
  },
}
