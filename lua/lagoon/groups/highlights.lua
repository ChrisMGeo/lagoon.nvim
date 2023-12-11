local M = {}

--- NeoVim highlights
--- @param palette LagoonPalette
--- @param opts any
---@return table
function M.highlight(palette, opts)
  return {
    -- The following are the Neovim (as of 0.8.0-dev+100-g371dfb174) highlight
    -- groups, mostly used for styling UI elements.
    -- Comment them out and add your own properties to override the defaults.
    -- An empty definition `{}` will clear all styling, leaving elements looking
    -- like the 'Normal' group.
    -- To be able to link to a group, it must already be defined, so you may have
    -- to reorder items as you go.
    --
    -- See :h highlight-groups

    Normal = {
      fg = palette.quillGrey,
      bg = opts.transparent and palette.none or palette.black1,
    }, -- Normal text
    Comment = vim.tbl_extend("force", { fg = palette.gondola }, opts.styles.comments), -- Any comment
    --
    -- ColorColumn    { }, -- Columns set with 'colorcolumn'
    Conceal = { fg = palette.ash, bg = palette.black1 }, -- Placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor = { fg = palette.mulledWine, bg = palette.silverChalice }, -- Character under the cursor
    CurSearch = { bg = palette.cocoaBrown }, -- Highlighting a search pattern under the cursor (see 'hlsearch')
    -- lCursor        { }, -- Character under the cursor when |language-mapping| is used (see 'guicursor')
    -- CursorIM       { }, -- Like Cursor, but used when in IME mode |CursorIM|
    -- CursorColumn   { }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine = { bg = palette.black2 }, -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory = { fg = palette.ash }, -- Directory names (and other special names in listings)
    NeoTreeDirectoryIcon = { fg = palette.fiord },
    NeoTreeGitConflict = { fg = palette.whiskey },
    NeoTreeDotfile = { fg = palette.bokaraGrey },
    NeoTreeGitUntracked = { fg = palette.fountainBlue },
    NeoTreeDimText = { fg = palette.gunmetal },
    NeoTreeNormal = { link = "Normal", fg = palette.ash },
    DiffAdd = { fg = palette.lochinvar1 }, -- Diff mode: Added line |diff.txt|
    DiffChange = { fg = palette.shakespeare }, -- Diff mode: Changed line |diff.txt|
    DiffDelete = { fg = palette.contessa }, -- Diff mode: Deleted line |diff.txt|
    -- DiffText       { }, -- Diff mode: Changed text within a changed line |diff.txt|
    -- EndOfBuffer    { }, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
    -- TermCursor     { }, -- Cursor in a focused terminal
    -- TermCursorNC   { }, -- Cursor in an unfocused terminal
    ErrorMsg = { fg = palette.contessa }, -- Error messages on the command line
    VertSplit = { fg = palette.black1, bg = palette.black1 }, -- Column separating vertically split windows
    Folded = { link = "Comment" }, -- Line used for closed folds
    FoldColumn = { link = "Normal" }, -- 'foldcolumn'
    SignColumn = { bg = opts.transparent and palette.none or palette.black1 }, -- Column where |signs| are displayed
    -- IncSearch      { }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    -- Substitute     { }, -- |:substitute| replacement text highlighting
    LineNr = { fg = palette.bokaraGrey, bg = palette.black1 }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    -- LineNrAbove    { }, -- Line number for when the 'relativenumber' option is set, above the cursor line
    -- LineNrBelow    { }, -- Line number for when the 'relativenumber' option is set, below the cursor line
    CursorLineNr = { fg = palette.ash }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    -- CursorLineFold { }, -- Like FoldColumn when 'cursorline' is set for the cursor line
    -- CursorLineSign { }, -- Like SignColumn when 'cursorline' is set for the cursor line
    MatchParen = { bg = palette.cardinGreen }, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg = { fg = palette.quillGrey, bg = palette.black1 }, -- 'showmode' message (e.g., "-- INSERT -- ")
    MsgArea = {
      fg = palette.quillGrey,
      bg = opts.transparent and palette.none or palette.black1,
    }, -- Area for messages and cmdline
    MsgSeparator = { link = "ModeMsg" }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg = { fg = palette.lochinvar1 }, -- |more-prompt|
    NonText = { fg = palette.nero1 }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    IblScope = { link = "NonText" },
    NormalFloat = { link = "Normal" }, -- Normal text in floating windows.
    -- FloatBorder    { }, -- Border of floating windows.
    -- FloatTitle     { }, -- Title of floating windows.
    -- NormalNC       { }, -- normal text in non-current windows
    Pmenu = { link = "Normal" }, -- Popup menu: Normal item.
    PmenuSel = { bg = palette.black2 }, -- Popup menu: Selected item.
    -- PmenuKind      { }, -- Popup menu: Normal item "kind"
    -- PmenuKindSel = { fg = "#ff0000" }, -- Popup menu: Selected item "kind"
    -- PmenuExtra     { }, -- Popup menu: Normal item "extra text"
    -- PmenuExtraSel = {}, -- Popup menu: Selected item "extra text"
    PmenuSbar = { link = "Normal" }, -- Popup menu: Scrollbar.
    PmenuThumb = { bg = palette.black3, fg = palette.black3 }, -- Popup menu: Thumb of the scrollbar.
    Question = { fg = palette.lochinvar1 }, -- |hit-enter| prompt and yes/no questions
    -- QuickFixLine   { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search = { bg = palette.mikado }, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
    -- SpecialKey     { }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
    -- SpellBad       { }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    -- SpellCap       { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    -- SpellLocal     { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    -- SpellRare      { }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
    -- StatusLine     { }, -- Status line of current window
    -- StatusLineNC   { }, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    -- TabLine        { }, -- Tab pages line, not active tab page label
    -- TabLineFill    { }, -- Tab pages line, where there are no labels
    -- TabLineSel     { }, -- Tab pages line, active tab page label
    Title = { fg = palette.lochinvar1 }, -- Titles for output from ":set all", ":autocmd" etc.
    Visual = { bg = palette.nero3 }, -- Visual mode selection
    -- VisualNOS      { }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg = { fg = palette.whiskey }, -- Warning messages
    -- Whitespace     { }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    -- Winseparator   { }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
    -- WildMenu       { }, -- Current match in 'wildmenu' completion
    WinBar = { fg = palette.greyChateau, bg = palette.black2 }, -- Window bar of current window
    -- WinBarNC       { }, -- Window bar of not-current windows

    -- Common vim syntax groups used for all kinds of code and markup.
    -- Commented-out groups should chain up to their preferred (*) group
    -- by default.
    --
    -- See :h group-name
    --
    -- Uncomment and edit if you want more specific syntax highlighting.

    Constant = { fg = palette.feldspar1 }, -- (*) Any constant
    String = { fg = palette.feldspar2 }, --   A string constant: "this is a string"
    -- Character      { }, --   A character constant: 'c', '\n'
    Number = { fg = palette.lochinvar2 }, --   A number constant: 234, 0xff
    -- Float          { }, --   A floating point constant: 2.3e10

    Identifier = { fg = palette.quillGrey }, -- (*) Any variable name
    Function = vim.tbl_extend(
      "force",
      { fg = palette.asparagus },
      opts.styles.functions
    ), --   Function name (also: methods for classes)

    Statement = { fg = palette.lochinvar1 }, -- (*) Any statement
    -- Conditional    { }, --   if, then, else, endif, switch, etc.
    -- Repeat         { }, --   for, do, while, etc.
    -- Label          { }, --   case, default, etc.
    Operator = { fg = palette.contessa }, --   "sizeof", "+", "*", etc.
    -- Keyword        { }, --   any other keyword
    -- Exception      { }, --   try, catch, throw

    PreProc = { link = "Statement" }, -- (*) Generic Preprocessor
    -- Include        { }, --   Preprocessor #include
    -- Define         { }, --   Preprocessor #define
    -- Macro          { }, --   Same as Define
    -- PreCondit      { }, --   Preprocessor #if, #else, #endif, etc.

    Type = vim.tbl_extend("force", { fg = palette.contessa }, opts.styles.type), -- (*) int, long, char, etc.
    -- StorageClass   { }, --   static, register, volatile, etc.
    -- Structure      { }, --   struct, union, enum, etc.
    -- Typedef        { }, --   A typedef

    Special = { fg = palette.dimGrey }, -- (*) Any special symbol
    -- SpecialChar    { }, --   Special character in a constant
    Tag = { fg = palette.lochinvar1 }, --   You can use CTRL-] on this
    -- Delimiter      { }, --   Character that needs attention
    -- SpecialComment { }, --   Special things inside a comment (e.g. '\n')
    -- Debug          { }, --   Debugging statements

    -- Underlined     { gui = "underline" }, -- Text that stands out, HTML links
    -- Ignore         { }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
    Error = { fg = palette.contessa }, -- Any erroneous construct
    -- Todo           { }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- These groups are for the native LSP client and diagnostic system. Some
    -- other LSP clients may use these groups, or use their own. Consult your
    -- LSP client's documentation.

    -- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
    --
    -- LspReferenceText            { } , -- Used for highlighting "text" references
    -- LspReferenceRead            { } , -- Used for highlighting "read" references
    -- LspReferenceWrite           { } , -- Used for highlighting "write" references
    -- LspCodeLens                 { } , -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
    -- LspCodeLensSeparator        { } , -- Used to color the seperator between two or more code lens.
    -- LspSignatureActiveParameter { } , -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

    -- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
    --
    DiagnosticError = { fg = palette.contessa }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticWarn = { fg = palette.whiskey }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticInfo             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticHint             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticOk = { fg = palette.lochinvar1 }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticVirtualTextError { } , -- Used for "Error" diagnostic virtual text.
    -- DiagnosticVirtualTextWarn  { } , -- Used for "Warn" diagnostic virtual text.
    -- DiagnosticVirtualTextInfo  { } , -- Used for "Info" diagnostic virtual text.
    -- DiagnosticVirtualTextHint  { } , -- Used for "Hint" diagnostic virtual text.
    -- DiagnosticVirtualTextOk    { } , -- Used for "Ok" diagnostic virtual text.
    -- DiagnosticUnderlineError   { } , -- Used to underline "Error" diagnostics.
    -- DiagnosticUnderlineWarn    { } , -- Used to underline "Warn" diagnostics.
    -- DiagnosticUnderlineInfo    { } , -- Used to underline "Info" diagnostics.
    -- DiagnosticUnderlineHint    { } , -- Used to underline "Hint" diagnostics.
    -- DiagnosticUnderlineOk      { } , -- Used to underline "Ok" diagnostics.
    -- DiagnosticFloatingError    { } , -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
    -- DiagnosticFloatingWarn     { } , -- Used to color "Warn" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingInfo     { } , -- Used to color "Info" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingHint     { } , -- Used to color "Hint" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingOk       { } , -- Used to color "Ok" diagnostic messages in diagnostics float.
    -- DiagnosticSignError        { } , -- Used for "Error" signs in sign column.
    -- DiagnosticSignWarn         { } , -- Used for "Warn" signs in sign column.
    -- DiagnosticSignInfo         { } , -- Used for "Info" signs in sign column.
    -- DiagnosticSignHint         { } , -- Used for "Hint" signs in sign column.
    -- DiagnosticSignOk           { } , -- Used for "Ok" signs in sign column.
  }
end

return M
