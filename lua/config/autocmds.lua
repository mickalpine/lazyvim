-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
-- ToggleTerm
vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")

-- Associate tfvars to hcl
vim.cmd("autocmd BufRead,BufNewFile *.tfvars set filetype=hcl")
--
-- Associate tf files to terraform
vim.cmd("autocmd BufRead,BufNewFile *.tf set filetype=terraform")

-- Associate .service files to systemd
vim.cmd("autocmd BufRead,BufNewFile *.service set filetype=systemd")

-- Set the colorscheme for markdown files - Catppucin has better Treesitter highlighting
vim.cmd("augroup markdown_color_theme | au! FileType markdown colorscheme catppuccin-mocha | augroup END")
