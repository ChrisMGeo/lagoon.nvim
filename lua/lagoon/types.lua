---@class Config
---@field palette_overrides? Palette | fun(prev_palette?: Palette): Palette
---@field highlight_overrides? Highlights | fun(prev_highlights?: Highlights, prev_palette?: Palette, opts?: Config): Highlights
---@field transparent? boolean

---@alias Highlights { [string]: Highlight }

---@class Highlight
---@field fg? string
---@field bg? string
---@field sp? string
---@field blend? integer
---@field bold? boolean
---@field standout? boolean
---@field underline? boolean
---@field undercurl? boolean
---@field underdouble? boolean
---@field underdotted? boolean
---@field underdashed? boolean
---@field strikethrough? boolean
---@field italic? boolean
---@field reverse? boolean
---@field nocombine? boolean
---@field link? string
-- TODO: Implement remaining members
-- default: Don't override existing definition :hi-default
-- ctermfg: Sets foreground of cterm color ctermfg
-- ctermbg: Sets background of cterm color ctermbg
-- cterm: cterm attribute map, like highlight-args. If not set, cterm attributes will match those from the attribute map documented above.
-- force: if true force update the highlight group when it exists.
