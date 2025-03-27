-- Customize Mason plugins
---@type LazySpec
return {
  -- use mason-tool-installer for automatically installing Mason packages
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    -- overrides `require("mason-tool-installer").setup(...)`
    opts = {
      ensure_installed = {
        "json-lsp",
        "html-lsp",
        "json-lsp",
        "unocss-language-server",
      },
    },
  },
}
