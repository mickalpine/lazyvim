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
        "jedi-language-server",
        "json-lsp",
        "pyright",
        "ruff-lsp",
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
