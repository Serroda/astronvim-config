return {
  {
    "AstroNvim/astrolsp",
    config = {
      tsserver = {
        init_options = {
          plugins = {
            {
              name = "@vue/typescript-plugin",
              languages = { "javascript", "typescript", "vue" },
              location = os.getenv "HOME"
                .. "/.local/share/nvim/mason/packages/vue-language-server/node_modules/@vue/language-server",
            },
          },
        },
        filetypes = { "typescript", "javascript", "vue" },
      },
    },
  },
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
        "tsserver",
        "volar",
        "jsonls",
        "html",
        "cssls",
        "markdownlint",
      })
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
        "vue",
        "html",
        "json",
        "css",
        "javascript",
        "typescript",
        "markdown",
      })
    end,
  },
}
