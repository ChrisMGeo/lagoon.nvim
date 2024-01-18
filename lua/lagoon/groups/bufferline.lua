local M = {}

--- bufferline.nvim highlights
--- @param palette Palette
--- @param opts Config
---@return Highlights
function M.highlight(palette, opts)
  return {
    BufferLineBackground = { fg = palette.nero1 },
    BufferLineIndicatorSelected = { fg = palette.nero2, sp = palette.nero2 },
    BufferLineSeparator = { fg = palette.black1, sp = palette.black1 },
  }
end

return M
