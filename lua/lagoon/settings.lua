local M = {}

---@type Config
local DEFAULT = {
  palette_overrides = {},
  highlight_overrides = {},
  transparent = false,
}

---@type Config
M.opts = {}

function M.set(opts)
  M.opts = vim.tbl_deep_extend("force", DEFAULT, opts or {})
end

M.set()

return M
