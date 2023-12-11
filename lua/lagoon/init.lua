local M = {}

function M.setup(opts)
  local settings = require "lagoon.settings"
  if opts then
    settings.set(opts)
  end
end

function M.load()
  local settings = require "lagoon.settings"
  local opts = settings.opts

  vim.api.nvim_command "hi clear"
  if vim.fn.exists "syntax_on" then
    vim.api.nvim_command "syntax reset"
  end

  vim.o.background = "dark"
  vim.o.termguicolors = true
  vim.g.colors_name = "lagoon"

  local util = require "lagoon.util"
  local palette = require "lagoon.palette"
  local groups = require "lagoon.groups"

  for _, group in ipairs(groups) do
    group = group.highlight(palette, opts)
    util.initialise(group)
  end
end

return M
