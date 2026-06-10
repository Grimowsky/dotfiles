return {
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    -- extend lualine_x rather than replacing the entire opts table
    opts = function(_, opts)
      table.insert(opts.sections.lualine_x, {
        function()
          return "😄"
        end,
      })
    end,
  },
}
