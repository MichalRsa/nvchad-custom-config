---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>y"] = { "<cmd> enew <CR>", "new buffer" },
  },
}

-- more keybinds!

return M
