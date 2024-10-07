return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/nvim-nio",
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    opts = {
      adapters = {
        ["neotest-python"] = {
          args = { "-vv", "--log-level", "DEBUG" },
        },
      },
      output = {
        open_on_run = false,
      },

      quickfix = {
        enabled = false,
        open = false,
      },
    },
  },
}
