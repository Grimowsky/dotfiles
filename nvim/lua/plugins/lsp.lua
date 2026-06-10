return {
  -- add pyright; mason will install it automatically
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        pyright = {},
      },
    },
  },

  -- tsserver via typescript-tools.nvim (communicates directly with tsserver; bypasses lspconfig for tsserver)
  {
    "pmizio/typescript-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    opts = {
      on_attach = function(_, bufnr)
        -- stylua: ignore
        vim.keymap.set("n", "<leader>co", "<cmd>TSToolsOrganizeImports<cr>", { buffer = bufnr, desc = "Organize Imports" })
        vim.keymap.set("n", "<leader>cR", "<cmd>TSToolsRenameFile<cr>", { buffer = bufnr, desc = "Rename File" })
      end,
      -- prefer monorepo/workspace roots before falling back to the nearest package.json
      root_dir = function(fname)
        local util = require("lspconfig.util")
        return util.root_pattern("pnpm-workspace.yaml", "lerna.json", ".git")(fname)
          or util.root_pattern("package.json")(fname)
      end,
      settings = {
        tsserver_file_preferences = {
          -- mirror of the original typescript.preferences.importModuleSpecifier = "non-relative"
          importModuleSpecifierPreference = "non-relative",
          includePackageJsonAutoImports = "on",
        },
      },
    },
  },
}
