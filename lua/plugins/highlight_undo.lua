if true then
  return {}
end
return {
  {
    "tzachar/highlight-undo.nvim",
    opts = {
      duration = 500,
    },
    event = "VeryLazy",
  },
}
