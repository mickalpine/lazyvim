local on_attach = function(client, bufnr)
  client.server_capabilities.hoverProvider = true
end

-- duplication comes from "hint", which pyright does not considered to be a type of diagnostics but neovim does.
-- pyright config tweaks does not suppress those "not accessed hint".
local capabilities = function()
  local capabilities = vim.lsp.protocol.make_client_capabilities()
  capabilities.textDocument.publishDiagnostics.tagSupport.valueSet = { 2 }
  return capabilities
end

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = {
          on_attach = on_attach,
          capabilities = capabilities(),
          settings = {
            python = {
              analysis = {
                autoSearchPaths = true,
                autoImportCompletions = true,
                typeCheckingMode = "standard",
                diagnosticMode = "workspace",
              },
              disableOrganizeImports = true,
            },
          },
        },
      },
    },
  },
}
