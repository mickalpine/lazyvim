return {
  {
    "ray-x/go.nvim",
    dependencies = {
      "ray-x/guihua.lua",
      "neovim/nvim-lspconfig",
      "nvim-treesitter/nvim-treesitter",
    },
    config = true,
    ft = { "go", "gomod", "gosum", "gowork" },
    -- build = ':lua require("go.install").update_all_sync()', -- if you need to install/update all binaries
    opts = {
      lsp_inlay_hints = {
        enable = false,
        style = "eol",
        only_current_line = true,
        only_current_line_autocmd = "CursorMoved,CursorMovedI",
        -- only_current_line_autocmd = "CursorHold",
      },
      trouble = true,
    },
  },

  {
    "olexsmir/gopher.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "nvim-treesitter/nvim-treesitter" },
    ft = { "go", "gomod", "gosum", "gowork" },
    config = true,
  },
}
