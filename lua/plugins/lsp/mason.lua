return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim"
  },
  config = function()
    local mason = require("mason")
    local mason_lspconfig = require("mason-lspconfig")
    
    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "⋯",
          package_uninstalled = "x"
        }
      }
    })

    mason_lspconfig.setup({
      ensure_installed = {
        "angularls",
        "bashls",
        "cssls",
        "tailwindcss",
        "dockerls",
        "html",
        "htmx",
        "jdtls",
        "ts_ls",
        "jsonls",
        "kotlin_language_server",
        "lua_ls",
        "ltex",
        "vacuum",
        "sqlls"
      },
      automatic_installation = true
    })
  end
}
