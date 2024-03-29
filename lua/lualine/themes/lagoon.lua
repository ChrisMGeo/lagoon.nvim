local settings = require "lagoon.settings"
local opts = settings.opts
local palette_overrides = opts.palette_overrides or {}
local palette = require "lagoon.palette"

if type(palette_overrides) == "function" then
  palette_overrides = palette_overrides(palette)
end

palette = vim.tbl_deep_extend("force", palette, palette_overrides or {})
local colors = {
  insert = { bg = palette.lochinvar1, fg = palette.nero2 },
  visual = { bg = palette.contessa, fg = palette.nero3 },
  replace = { bg = palette.redDamask, fg = palette.nero3 },
  command = {
    bg = palette.gunmetal,
    fg = palette.quillGrey,
  },
  bg = palette.black1,
  fg = palette.quillGrey,
}

return {
  normal = {
    a = { fg = colors.fg, bg = colors.bg, gui = "bold" },
    b = { fg = colors.fg, bg = colors.bg },
    c = { fg = colors.fg, bg = colors.bg },
  },
  insert = { a = { fg = colors.insert.fg, bg = colors.insert.bg, gui = "bold" } },
  visual = { a = { fg = colors.visual.fg, bg = colors.visual.bg, gui = "bold" } },
  command = { a = { fg = colors.command.fg, bg = colors.command.bg, gui = "bold" } },
  replace = { a = { fg = colors.replace.fg, bg = colors.replace.bg, gui = "bold" } },
  inactive = {
    a = { fg = colors.fg, bg = colors.bg },
    b = { fg = colors.fg, bg = colors.bg },
    c = { fg = colors.fg, bg = colors.bg },
  },
}
