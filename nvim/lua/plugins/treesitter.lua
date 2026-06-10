return {
  {
    "nvim-treesitter/nvim-treesitter",
    -- use list_extend so we append to LazyVim defaults rather than overwrite them
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "tsx",
        "typescript",
      })
    end,
  },
}
