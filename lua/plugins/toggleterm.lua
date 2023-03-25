return {
  {
    "akinsho/toggleterm.nvim",
    lazy = false,
    cmd = { "ToggleTerm", "TermExec" },
    opts = {
      close_on_exit = true,
      -- direction = "float",
      -- direction = "horizontal",
      -- direction = "tab",
      direction = "vertical",
      insert_mappings = true,
      open_mapping = [[<c-\>]],
      shading_factor = 2,
      size = function(term)
        if term.direction == "horizontal" then
          return 10
        elseif term.direction == "vertical" then
          return vim.o.columns * 0.4
        end
      end,
      float_opts = {
        border = "curved",
        highlights = { border = "Normal", background = "Normal" },
      },
    },
  },
}
