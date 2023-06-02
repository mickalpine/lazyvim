return {
  "iamcco/markdown-preview.nvim",
  build = "cd app && npm install",
  ft = "markdown",
  keys = {
    "<leader>up",
    "<cmd>MarkdownPreviewToggle<cr>",
    desc = "Toggle Markdown Preview",
  },
}
