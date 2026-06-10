return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      -- browse installed lazy.nvim plugin directories
      -- stylua: ignore
      { "<leader>fp", function() require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root }) end, desc = "Find Plugin File" },
    },
    opts = {
      defaults = {
        layout_strategy = "vertical",
        layout_config = {
          vertical = {
            prompt_position = "top",
            mirror = true,
          },
        },
        sorting_strategy = "ascending",
        winblend = 0,
      },
      pickers = {
        find_files = {
          theme = "dropdown",
        },
      },
    },
  },
}
