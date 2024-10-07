local on_attach = function(client, bufnr)
  client.server_capabilities.renameProvider = false
  client.server_capabilities.referencesProvider = false
  client.server_capabilities.definitionProvider = false
end

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        jedi_language_server = {
          on_attach = on_attach,
        },
      },
    },
  },
}
