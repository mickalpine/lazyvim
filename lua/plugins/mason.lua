return {
  -- add any tools you want to have installed below
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "black",
        "gofumpt",
        "goimports-reviser",
        "golines",
        "gomodifytags",
        "gopls",
        "impl",
        "jedi-language-server",
        "json-lsp",
        "ruff-lsp",
        "rust-analyzer",
        "shellcheck",
        "shfmt",
        "staticcheck",
        "stylua",
        "taplo",
      },
    },
  },
}
