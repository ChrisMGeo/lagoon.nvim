local M = {}

---@param name string
---@param value Highlight
local function highlight(name, value)
  vim.api.nvim_set_hl(0, name, value)
end

---@param group Highlights
function M.initialise(group)
  for name, value in pairs(group) do
    highlight(name, value)
  end
end

return M
