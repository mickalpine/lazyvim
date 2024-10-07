return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      diagnostics = {
        underline = false,
        virtual_text = false,
      },
      codelens = { enabled = true },
      inlay_hints = { enabled = false },
    },
  },
}
