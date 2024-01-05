return {
  {
    "nvim-pack/nvim-spectre",
    lazy = false,
    keys = {
      {
        "<leader>sr",
        "<esc><cmd>lua require('spectre').open_visual()<CR>",
        mode = "v",
        desc = "Search current word (Spectre)",
      },
    },
    opts = {
      mapping = {
        ["toggle_search_all"] = {
          map = "ta",
          cmd = "<cmd>lua require('spectre').change_options('toggle-all')<CR>",
          desc = "toggle search all",
        },
      },
      find_engine = {
        ["rg"] = {
          options = {
            ["toggle-all"] = {
              value = "-uu",
              desc = "search all files",
              icon = "[A]",
            },
          },
        },
      },
    },
  },
}
