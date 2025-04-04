local lspconfig = require('lspconfig')
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {
    'ts_ls',
    'eslint',
    'html',
    'cssls'
  },
  handlers = {
    function(server)
      lspconfig[server].setup({
        capabilities = lsp_capabilities,
      })
    end,
    ['ts_ls'] = function()
      lspconfig.ts_ls.setup({
        capabilities = lsp_capabilities,
        settings = {
          completions = {
            completeFunctionCalls = true
          }
        }
      })
    end
  }
})
