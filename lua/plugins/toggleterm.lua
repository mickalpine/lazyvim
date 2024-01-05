return {
  {
    "akinsho/toggleterm.nvim",
    -- lazy = false,
    cmd = { "ToggleTerm", "TermExec" },
    opts = {
      autochdir = true,
      close_on_exit = true,
      direction = "float",
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
        width = math.floor(vim.o.columns * 0.99),
        height = math.floor(vim.o.lines * 0.99),
      },
    },
  },
}
