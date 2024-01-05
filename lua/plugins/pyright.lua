local on_attach = function(client, bufnr)
  client.server_capabilities.hoverProvider = false
end

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = {
          on_attach = on_attach,
          settings = {
            python = {
              analysis = {
                autoSearchPaths = true,
                autoImportCompletions = true,
                typeCheckingMode = "basic",
              },
              disableOrganizeImports = true,
            },
          },
        },
      },
    },
  },
}
