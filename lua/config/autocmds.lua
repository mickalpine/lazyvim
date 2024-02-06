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

-- LuaSnip Snippet History Fix (Seems to work really well, I think.)
-- local luasnip_fix_augroup = vim.api.nvim_create_augroup("MyLuaSnipHistory", { clear = true })
-- vim.api.nvim_create_autocmd("ModeChanged", {
--   pattern = "*",
--   callback = function()
--     if
--       ((vim.v.event.old_mode == "s" and vim.v.event.new_mode == "n") or vim.v.event.old_mode == "i")
--       and require("luasnip").session.current_nodes[vim.api.nvim_get_current_buf()]
--       and not require("luasnip").session.jump_active
--     then
--       require("luasnip").unlink_current()
--     end
--   end,
--   group = luasnip_fix_augroup,
-- })
