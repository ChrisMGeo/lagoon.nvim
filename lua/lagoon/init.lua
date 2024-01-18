local M = {}

---@param opts Config
function M.setup(opts)
  local settings = require "lagoon.settings"
  if opts then
    settings.set(opts)
  end
end

function M.load()
  local settings = require "lagoon.settings"
  local opts = settings.opts
  local palette_overrides = opts.palette_overrides or {}
  local highlight_overrides = opts.highlight_overrides or {}

  vim.api.nvim_command "hi clear"
  if vim.fn.exists "syntax_on" then
    vim.api.nvim_command "syntax reset"
  end

  vim.o.background = "dark"
  vim.o.termguicolors = true
  vim.g.colors_name = "lagoon"

  local util = require "lagoon.util"
  local palette = require "lagoon.palette"

  if type(palette_overrides) == "function" then
    palette_overrides = palette_overrides(palette)
  end

  palette = vim.tbl_deep_extend("force", palette, palette_overrides or {})

  local group_functions = require "lagoon.groups"
  local groups = {}

  for _, group in ipairs(group_functions) do
    groups = vim.tbl_deep_extend("force", groups, group.highlight(palette, opts))
  end
  if type(highlight_overrides) == "function" then
    highlight_overrides = highlight_overrides(groups, palette, opts)
  end
  groups = vim.tbl_deep_extend("force", groups, highlight_overrides)
  util.initialise(groups)
end

return M
