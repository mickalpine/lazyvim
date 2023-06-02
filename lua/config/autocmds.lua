-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
-- ToggleTerm
vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")

-- Associate tfvars to hcl
vim.cmd("autocmd! BufNewFile, BufRead *.tfvars set ft=hcl")
