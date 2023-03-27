local Terminal = require("toggleterm.terminal").Terminal
local gitui = Terminal:new({ cmd = "gitui", direction = "float", hidden = true })
function _GITUI_TOGGLE()
  gitui:toggle()
end
vim.api.nvim_set_keymap("n", "<leader>gu", "<cmd>lua _GITUI_TOGGLE()<CR>", { noremap = true, silent = true })
