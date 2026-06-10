return {
  "saghen/blink.cmp",
  opts = function(_, opts)
    -- disable completion in the typr typing-practice buffer
    opts.enabled = function()
      return vim.bo.filetype ~= "typr"
    end
    return opts
  end,
}
