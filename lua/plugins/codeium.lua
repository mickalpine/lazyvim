local codeium_status_line = {
  function()
    return vim.api.nvim_call_function("codeium#GetStatusString", {})
  end,
  icon = "󱙺",
  -- color = { fg = colours.bufVisible },
  on_click = function()
    return vim.fn["codeium#Chat"]()
  end,
}

return {
  {
    "Exafunction/codeium.vim",
    event = { "BufNewFile", "BufFilePre", "BufRead", "BufEnter" },
    -- build = ":Codeium Auth",
    config = function()
      -- Codeium's default keybindings can be disabled by setting
      vim.g.codeium_disable_bindings = 1

      vim.keymap.set("i", "<C-g>", function()
        return vim.fn["codeium#Accept"]()
      end, { desc = "Accept Suggestion", expr = true, silent = true })

      vim.keymap.set("i", "<C-]>", function()
        return vim.fn["codeium#CycleCompletions"](1)
      end, { desc = "Next Suggestion", expr = true, silent = true })

      vim.keymap.set("i", "<C-[>", function()
        return vim.fn["codeium#CycleCompletions"](-1)
      end, { desc = "Previous Suggestion", expr = true, silent = true })

      vim.keymap.set("i", "<C-x>", function()
        return vim.fn["codeium#Clear"]()
      end, { desc = "Clear Suggestion", expr = true, silent = true })

      vim.keymap.set("i", "<C-e>", function()
        return vim.fn["codeium#Complete"]()
      end, { desc = "Complete Suggestion", expr = true, silent = true })
    end,
  },

  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function(_, opts)
      table.insert(opts.sections.lualine_x, #opts.sections.lualine_x + 1, codeium_status_line)
    end,
  },
}
