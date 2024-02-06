return {
  {
    "ErichDonGubler/lsp_lines.nvim",
    dependencies = {
      {
        "nvim-lspconfig",
        opts = {
          diagnostics = {
            virtual_text = false,
          },
        },
      },
    },
  },
}
