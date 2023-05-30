return {
  {
    "ErichDonGubler/lsp_lines.nvim",
    config = function()
      require("lsp_lines").setup()
    end,
  },
  {
    "nvim-lspconfig",
    opts = {
      diagnostics = {
        virtual_text = false,
      },
    },
  },
}
