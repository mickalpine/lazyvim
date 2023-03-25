return {
  -- add any tools you want to have installed below
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "black",
        "gopls",
        "jedi-language-server",
        "json-lsp",
        "ruff-lsp",
        "rust-analyzer",
        "shellcheck",
        "shfmt",
        "stylua",
        "taplo",
      },
    },
  },
}
