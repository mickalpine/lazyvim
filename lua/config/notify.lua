-- local banned_messages = { "No information available" }
-- vim.notify = function(msg, ...)
--   for _, banned in ipairs(banned_messages) do
--     if msg == banned then
--       return
--     end
--   end
--   require("notify")(msg, ...)
-- end

-- local vim_notify = vim.notify
vim.notify = function(msg, level, opts)
  if msg == "No information available" then
    return
  end

  -- return vim_notify(msg, level, opts)
  -- Or with `rcarriga/nvim-notify`
  return require("notify").notify(msg, level, opts)
end
