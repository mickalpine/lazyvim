local on_attach = function(client, bufnr)
  client.server_capabilities.hoverProvider = false
end

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ruff_lsp = {
          on_attach = on_attach,
          init_options = {
            settings = {
              args = { "--ignore", "E501" },
            },
          },
        },
      },
    },
  },
}
