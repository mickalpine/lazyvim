return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      {
        "<leader>fp",
        function()
          require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root })
        end,
        desc = "Find Plugin File",
      },

      -- {
      --   "gp",
      --   function()
      --     require("telescope.builtin").lsp_definitions({
      --       jump_type = "never",
      --     })
      --   end,
      --   desc = "Preview Definition",
      -- },

      -- disable the keymap to grep files
      { "<leader>/", false },
    },

    opts = {
      defaults = {
        vimgrep_arguments = {
          "rg",
          "--color=never",
          "--no-heading",
          "--with-filename",
          "--line-number",
          "--column",
          "--smart-case",
          "-u",
          --[[
              -u, --unrestricted
              Reduce the level of "smart" searching. A single -u won't respect .gitignore
              (etc.) files (--no-ignore). Two -u flags will additionally search hidden files
              and directories (-./--hidden). Three -u flags will additionally search binary
              files (--binary).
              'rg -uuu' is roughly equivalent to 'grep -r'.
          --]]
        },
      },
    },
  },

  -- add telescope-fzf-native
  {
    "telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")
      end,
    },
  },

  -- add telescope-undo
  {
    "telescope.nvim",
    dependencies = {
      "debugloop/telescope-undo.nvim",
      config = function()
        require("telescope").setup({
          extensions = {
            undo = {
              side_by_side = true,
              layout_strategy = "vertical",
              layout_config = {
                preview_height = 0.8,
              },
            },
          },
        })
        require("telescope").load_extension("undo")
        vim.keymap.set("n", "<leader>fu", "<cmd>Telescope undo<cr>")
      end,
    },
  },
}
