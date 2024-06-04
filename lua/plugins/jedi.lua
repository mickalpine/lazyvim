local on_attach = function(client, bufnr)
  client.server_capabilities.renameProvider = false
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
