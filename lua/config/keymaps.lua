-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

map("n", "<leader>ct", "", { desc = "Trunk CLI" })
map("n", "<leader>ctf", "<cmd>!trunk fmt<cr>", { desc = "Trunk format" })
map("n", "<leader>ctc", "<cmd>!trunk check<cr>", { desc = "Trunk check" })
map("n", "<leader>cti", "<cmd>!trunk init<cr>", { desc = "Trunk init" })
map("n", "<leader>ctu", "<cmd>w<cr><cmd>!trunk upgrade<cr>", { desc = "Trunk upgrade" })
