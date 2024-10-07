-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

-- Comment
map("n", "<leader>/", "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>", { desc = "Comment Line" })
map(
  "x",
  "<leader>/",
  "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
  { desc = "Comment Block" }
)

-- Press jk fast to enter
map("i", "jk", "<ESC>", { desc = "Quick escape." })

-- ToggleTerm
function _G.set_terminal_keymaps()
  local opts = { noremap = true }
  vim.api.nvim_buf_set_keymap(0, "t", "<esc>", [[<C-\><C-n>]], opts)
  vim.api.nvim_buf_set_keymap(0, "t", "<C-h>", [[<C-\><C-n><C-W>h]], opts)
  vim.api.nvim_buf_set_keymap(0, "t", "<C-j>", [[<C-\><C-n><C-W>j]], opts)
  vim.api.nvim_buf_set_keymap(0, "t", "<C-k>", [[<C-\><C-n><C-W>k]], opts)
  -- vim.api.nvim_buf_set_keymap(0, "t", "<C-l>", [[<C-\><C-n><C-W>l]], opts)
end
local opts = { noremap = true }
map("n", "<leader>tcf", "<cmd>ToggleTerm direction=float size=40<CR>", opts)
map("n", "<leader>tcv", "<cmd>ToggleTerm direction=vertical size=40<CR>", opts)
map("n", "<leader>tch", "<cmd>ToggleTerm direction=horizontal size=10<CR>", opts)
map("t", "<C-l>", "<C-l>", opts)

-- ZenMode
map("n", "<leader>uz", "<cmd>ZenMode<CR>", opts)

-- Shortcut to use blackhole register by default
map("v", "c", '"_c', opts)
map("v", "C", '"_C', opts)
map("n", "c", '"_c', opts)
map("n", "C", '"_C', opts)
map("n", "dw", '"_dw', opts)
map("v", "dw", '"_dw', opts)
map("n", "diw", '"_diw', opts)
map("v", "diw", '"_diw', opts)

-- Align
map("n", "<leader>ct", "vip:EasyAlign*<bar><cr>", { desc = "Align Markdown Table" })
map("x", "<leader>ct", "vip:EasyAlign*<bar><cr>", { desc = "Align Markdown Table" })

-- close all buffers except current
map("n", "<leader>bc", ":up | silent! %bd | e# | bd#<CR>", { desc = "Close all buffers except current", silent = true })
