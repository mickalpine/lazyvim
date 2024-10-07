return {
  {
    "chrisbra/changesplugin",
    lazy = false,
    config = function()
      vim.cmd([[
        let g:changes_add_sign='·'
        let g:changes_delete_sign='·'
        let g:changes_modified_sign='·'
        let g:changes_respect_SignColumn = 1
  ]])
    end,
  },
}
