-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set;
local Input = require("nui.input")
local event = require("nui.utils.autocmd").event

map("n", "<leader>ct", "", { desc = "Trunk CLI"})
map("n", "<leader>ctf", "<cmd>!trunk fmt<cr>", { desc = "Trunk format" })
map("n", "<leader>ctc", "<cmd>!trunk check<cr>", { desc = "Trunk check" })
map("n", "<leader>cti", "<cmd>!trunk init<cr>", { desc = "Trunk init"})
map("n", "<leader>ctu", "<cmd>!trunk upgrade<cr>", { desc = "Trunk upgrade"})
map("n", "<leader>cta", "", { desc = "Trunk Actions"})
map("n", "<leader>ctal", function ()
local Popup = require("nui.popup")
local event = require("nui.utils.autocmd").event

local popup = Popup({
  enter = true,
  focusable = true,
  border = {
    style = "rounded",
  },
  position = "50%",
  size = {
    width = "80%",
    height = "60%",
  },
})

-- mount/open the component
popup:mount()

-- unmount component when cursor leaves buffer
popup:on(event.BufLeave, function()
  popup:unmount()
end)

local handle = io.popen("trunk actions list")
local result = handle:read("*a")
handle:close()

-- set content
vim.api.nvim_buf_set_lines(popup.bufnr, 0, 1, false, { result })

end, { desc = "List Actions"})
