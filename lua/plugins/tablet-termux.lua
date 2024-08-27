-- INSTALL LUA_LANGUAGE_SERVER AND STYLUA FOR TERMUX

return {
  { "AstroNvim/astrolsp", opts = {
    servers = {
      "lua_ls",
    },
  } },
  {
    "nvimtools/none-ls.nvim",
    opts = function(_, opts)
      local null_ls = require "null-ls"
      opts.sources = require("astrocore").list_insert_unique(opts.sources, {
        null_ls.builtins.formatting.stylua,
      })
    end,
  },
}
