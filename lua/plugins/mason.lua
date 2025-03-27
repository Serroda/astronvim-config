-- Customize Mason plugins
---@type LazySpec
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    -- overrides `require("mason-tool-installer").setup(...)`
    opts = {
      ensure_installed = {
        "json-lsp",
        "html-lsp",
        "css-lsp",
        "unocss-language-server",
      },
    },
  },
}
