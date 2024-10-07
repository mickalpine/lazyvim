return {
  -- add any tools you want to have installed below
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "bash-language-server",
        "black",
        "gofumpt",
        "goimports-reviser",
        "golines",
        "gomodifytags",
        "gopls",
        "impl",
        "isort",
        "jedi-language-server",
        "json-lsp",
        "pyright",
        "ruff",
        "shellcheck",
        "shfmt",
        "staticcheck",
        "stylua",
        "sqlfluff",
        "taplo",
        "terraform-ls",
      },
    },
  },
}
