return {
  -- add any tools you want to have installed below
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "black",
        "bash-language-server",
        "gofumpt",
        "goimports-reviser",
        "golines",
        "gomodifytags",
        "gopls",
        "impl",
        "jedi-language-server",
        "json-lsp",
        "mypy",
        "ruff-lsp",
        "rust-analyzer",
        "shellcheck",
        "shfmt",
        "staticcheck",
        "stylua",
        "taplo",
        "terraform-ls",
      },
    },
  },
}
