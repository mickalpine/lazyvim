return {
  {
    "iamcco/markdown-preview.nvim",
    ft = "markdown",
    build = "cd app && yarn install",
  },

  -- use pandoc for markdown instead of Treesitter
  {
    "vim-pandoc/vim-pandoc-syntax",
    enabled = false,
    ft = { "markdown", "markdown.pandoc" },
    config = function()
      vim.g["pandoc#syntax#codeblocks#embeds#langs"] =
        { "json", "go", "python", "bash", "markdown", "lua", "make", "sh", "sql" } -- Syntax highlighting for fenced markdown code blocks

      vim.cmd(
        "augroup pandoc_syntax | au! BufNewFile,BufFilePre,BufRead *.md set filetype=markdown.pandoc | augroup END"
      )
    end,
  },
  dependencies = {
    {
      "nvim-treesitter/nvim-treesitter",
      enabled = false,
      ft = { "markdown", "markdown.pandoc" },
      opts = {
        highlight = {
          disable = { "markdown" },
        },
      },
    },
  },
  {
    "MeanderingProgrammer/markdown.nvim",
    opts = { heading = { enabled = false } },
  },
}
