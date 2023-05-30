return {
  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function()
      local nls = require("null-ls")
      return {
        root_dir = require("null-ls.utils").root_pattern(".null-ls-root", ".neoconf.json", "Makefile", ".git"),
        sources = {
          nls.builtins.code_actions.gomodifytags,
          nls.builtins.code_actions.impl,
          nls.builtins.diagnostics.mypy,
          nls.builtins.diagnostics.staticcheck,
          nls.builtins.formatting.black,
          nls.builtins.formatting.gofumpt,
          nls.builtins.formatting.goimports_reviser,
          nls.builtins.formatting.golines,
          nls.builtins.formatting.isort,
          nls.builtins.formatting.shfmt,
          nls.builtins.formatting.stylua,
        },
      }
    end,
  },
}
