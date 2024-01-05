if true then
  return {}
end
local on_attach = function(client, bufnr)
  client.server_capabilities.hoverProvider = false
end

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pylyzer = {
          on_attach = on_attach,
          settings = {
            python = {
              checkOnType = true,
              diagnostics = true,
              inlayHints = true,
              smartCompletion = true,
            },
          },
        },
      },
    },
  },
}
