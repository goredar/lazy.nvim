-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

map("n", "<C-p>", LazyVim.pick("files", { root = false }))
map("n", "<C-z>", LazyVim.pick("live_grep", { root = false }))
-- map("n", "<S-b>", "<cmd> Telescope git_bcommits <CR>")

map("n", "<C-q>", function()
  Snacks.bufdelete()
end)

map("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end)
map("n", "<C-k>", function()
  vim.diagnostic.goto_prev()
end)

map("n", "<Leader>z", "1z=")

map("n", "0", "^")
map("n", "^", "0")

map("i", "<C-a>", "<ESC>I")
map("i", "<C-e>", "<ESC>A")
map("i", "<C-h>", "<C-o>B")
map("i", "<C-l>", "<C-o>W")

map({ "n", "v" }, "<C-c>", function()
  return require("CopilotChat").toggle()
end)

-- map({ "n", "v" }, "<C-c>", function()
--   local input = vim.fn.input("Ask Copilot:")
--   if input ~= "" then
--     require("CopilotChat").ask(input)
--   end
-- end)
