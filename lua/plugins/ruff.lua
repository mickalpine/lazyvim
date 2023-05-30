local on_attach = function(client, bufnr)
  client.server_capabilities.hoverProvider = false
end

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      -- you can do any additional lsp server setup here
      -- return true if you don't want this server to be setup with lspconfig
      ---@type table<string, fun(server:string, opts:_.lspconfig.options):boolean?>
      setup = {
        -- Specify * to use this function as a fallback for any server
        -- ["*"] = function(server, opts) end,

        ruff_lsp = function(_, opts)
          -- Configure `ruff-lsp`.
          -- See: https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#ruff_lsp
          -- For the default config, along with instructions on how to customize the settings
          require("lspconfig").ruff_lsp.setup({
            on_attach = on_attach,
            init_options = {
              settings = {
                -- Any extra CLI arguments for `ruff` go here.
                args = { "--ignore E501,F401" },
              },
            },
          })
          return true
        end,
      },
    },
  },
}
