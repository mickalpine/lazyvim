return {
  {
    "nvimtools/none-ls.nvim",
    -- enabled = false,
    opts = function()
      local nls = require("null-ls")
      return {
        sources = {
          nls.builtins.code_actions.gomodifytags,
          nls.builtins.code_actions.impl,
          nls.builtins.diagnostics.markdownlint.with({ extra_args = { "--disable", "MD013", "MD024" } }),
          nls.builtins.diagnostics.staticcheck,
          nls.builtins.formatting.black,
          nls.builtins.formatting.gofumpt,
          nls.builtins.formatting.goimports_reviser,
          nls.builtins.formatting.golines,
          nls.builtins.formatting.isort,
          nls.builtins.formatting.markdownlint,
          nls.builtins.formatting.shfmt,
          nls.builtins.formatting.sql_formatter.with({ extra_args = { "-l", "sqlite" } }),
          nls.builtins.formatting.stylua,
        },
      }
    end,
  },
}
