local M = {}

---@type carvion.HighlightsFn
function M.get(opts, c)
  return {
    -- Core UI
    Normal = { fg = c.fg.default, bg = opts.transparent and c.none or c.bg.default },
    NormalNC = { fg = c.fg.default, bg = opts.transparent and c.specials.none or c.bg.subtle },
    NormalSB = { fg = c.fg.default, bg = c.bg.sidebar },

    Conceal = { fg = c.fg.subtle },

    Cursor = { fg = c.fg.alternative, bg = c.colors.orange.base },
    lCursor = "Cursor",
    CursorIM = "Cursor",

    CursorColumn = { bg = c.bg.cursorline },
    CursorLine = "CursorColumn",
    CursorLineNr = { fg = c.colors.orange.base, bg = c.bg.cursorline },

    ColorColumn = { bg = c.bg.cursorline },

    LineNr = { fg = c.specials.comment },
    LineNrAbove = "LineNr",
    LineNrBelow = "LineNr",

    Directory = { fg = c.colors.blue.base },

    EndOfBuffer = { fg = c.bg.default },

    NonText = { fg = c.fg.disabled },

    Whitespace = { fg = c.specials.whitespace },
    SpecialKey = { fg = c.specials.whitespace },

    Title = { fg = c.colors.orange.base, bold = true },

    Bold = { fg = c.fg.default, bold = true },
    Italic = { fg = c.fg.default, italic = true },

    -- Window UI
    VertSplit = { fg = c.border.default },
    WinSeparator = "VertSplit",

    StatusLine = { fg = c.fg.default, bg = c.bg.statusline },
    StatusLineNC = { fg = c.fg.muted, bg = c.bg.inactive },

    TabLine = { fg = c.fg.disabled, bg = c.bg.default },
    TabLineFill = "TabLine",
    TabLineSel = { fg = c.fg.alternative, bg = c.colors.orange.base },

    Folded = { fg = c.fg.subtle, bg = c.bg.subtle },
    FoldColumn = { fg = c.fg.subtle, bg = opts.transparent and c.none or c.bg.default },

    SignColumn = { fg = c.bg.default, bg = opts.transparent and c.specials.none or c.bg.default },
    SignColumnSB = { fg = c.fg.default, bg = c.bg.sidebar },

    WinBar = "StatusLine",
    WinBarNC = "StatusLineNC",

    -- Floating UI
    NormalFloat = { fg = c.fg.default, bg = c.bg.subtle },

    FloatBorder = { fg = c.border.default, bg = c.bg.subtle },
    FloatTitle = { fg = c.colors.orange.base, bg = c.bg.subtle, bold = true },

    Pmenu = { fg = c.fg.default, bg = c.bg.subtle },
    PmenuSel = { fg = c.fg.default, bg = c.bg.option },
    PmenuMatch = { fg = c.colors.orange.base, bold = true },
    PmenuMatchSel = "PmenuMatch",

    PmenuSbar = { bg = c.bg.scrollbar },
    PmenuThumb = { bg = c.border.strong },

    -- Visual & Search
    Visual = { bg = c.bg.visual },
    VisualNOS = { bg = c.bg.visual },

    Search = { fg = c.fg.alternative, bg = c.colors.orange.dim },
    IncSearch = { fg = c.fg.alternative, bg = c.colors.orange.base, bold = true },
    CurSearch = "IncSearch",

    MatchParen = { fg = c.colors.orange.base, bold = true },

    -- Syntax
    Comment = { fg = c.specials.comment, style = opts.styles.comments },

    Constant = { fg = c.colors.neutral.base },
    String = { fg = c.colors.green.base, style = opts.styles.strings },
    Character = { fg = c.colors.green.base },
    -- Number = {},
    -- Boolean = {},
    -- Float = {},

    Identifier = { fg = c.fg.default, style = opts.styles.variables },
    Function = { fg = c.colors.orange.base, style = opts.styles.functions },

    Statement = { fg = c.specials.keyword },
    -- Conditional = {},
    -- Repeat = {},
    -- Label = {},
    Operator = { fg = c.specials.symbol },
    Keyword = { fg = c.specials.keyword, style = opts.styles.keywords },
    -- Exception = {},

    PreProc = { fg = c.specials.keyword },
    -- Include = {},
    -- Define = {},
    -- Macro = {},
    -- PreCondit = {},

    Type = { fg = c.colors.blue.base, style = opts.styles.types },
    -- StorangeClass = {},
    -- Structure = {},
    -- Typedef = {},

    Special = { fg = c.specials.symbol },
    -- SpecialChar - {},
    -- Tag = {},
    Delimiter = { fg = c.specials.symbol },
    -- SpecialComment = {},
    Debug = { fg = c.colors.orange.base },

    Underlined = { underline = true },

    -- Ignore = {},

    Error = { fg = c.diagnostics.error.fg, bold = true },

    Todo = { fg = c.fg.default, bold = true },

    -- Added = {},
    -- Changed = {},
    -- Removed = {},

    -- Messages
    ErrorMsg = { fg = c.diagnostics.error.fg },
    WarningMsg = { fg = c.colors.orange.soft },

    ModeMsg = { fg = c.colors.blue.base, bold = true },
    MsgArea = { fg = c.fg.default },
    MoreMsg = { fg = c.colors.green.base },

    Question = { fg = c.colors.blue.base },
    Substitute = { fg = c.fg.alternative, bg = c.colors.orange.soft },

    -- Navigation
    QuickFixLine = { bg = c.bg.visual },
    WildMenu = { fg = c.fg.default, bg = c.bg.option },

    -- Spell
    SpellBad = { sp = c.diagnostics.error.fg, undercurl = true },
    SpellCap = { sp = c.diagnostics.warn.fg, undercurl = true },
    SpellLocal = { sp = c.diagnostics.info.fg, undercurl = true },
    SpellRare = { sp = c.diagnostics.hint.fg, undercurl = true },

    -- Language Services Protocol
    LspReferenceText = { fg = "red", bg = c.bg.option },
    LspReferenceRead = { bg = c.bg.option },
    LspReferenceWrite = { bg = c.bg.option },

    LspSignatureActiveParameter = { bg = c.bg.visual },
    LspCodeLens = { fg = c.fg.disabled },
    LspCodeLensSeparator = { fg = c.fg.faint },
    LspInlayHint = { fg = c.diagnostics.hint.fg },
    LspInfoBorder = { fg = c.fg.default, bg = c.bg.subtle },
    ComplHint = { fg = c.colors.blue.base },

    -- Diagnostics
    DiagnosticError = { fg = c.diagnostics.error.fg },
    DiagnosticWarn = { fg = c.diagnostics.warn.fg },
    DiagnosticInfo = { fg = c.diagnostics.info.fg },
    DiagnosticHint = { fg = c.diagnostics.hint.fg },

    DiagnosticUnnecessary = { fg = c.colors.orange.dim },

    DiagnosticVirtualTextError = { fg = c.diagnostics.error.fg, bg = c.diagnostics.error.bg },
    DiagnosticVirtualTextWarn = { fg = c.diagnostics.warn.fg, bg = c.diagnostics.warn.bg },
    DiagnosticVirtualTextInfo = { fg = c.diagnostics.info.fg, bg = c.diagnostics.info.bg },
    DiagnosticVirtualTextHint = { fg = c.diagnostics.hint.fg, bg = c.diagnostics.hint.bg },

    DiagnosticUnderlineError = { sp = c.diagnostics.error.fg, undercurl = true },
    DiagnosticUnderlineWarn = { sp = c.diagnostics.warn.fg, undercurl = true },
    DiagnosticUnderlineInfo = { sp = c.diagnostics.info.fg, undercurl = true },
    DiagnosticUnderlineHint = { sp = c.diagnostics.hint.fg, undercurl = true },

    -- Diff
    DiffAdd = { fg = c.diagnostics.hint.fg, bg = c.diagnostics.hint.bg },
    DiffChange = { fg = c.diagnostics.info.fg, bg = c.diagnostics.info.bg },
    DiffDelete = { fg = c.diagnostics.error.fg, bg = c.diagnostics.error.bg },
    DiffText = { fg = c.fg.default, bg = c.bg.option },

    diffAdded = { fg = c.diagnostics.hint.fg },
    diffRemoved = { fg = c.diagnostics.error.fg },
    diffChanged = { fg = c.diagnostics.info.fg },

    diffOldFile = { fg = c.specials.comment },
    diffNewFile = { fg = c.colors.green.base },
    diffFile = { fg = c.colors.blue.base },
    diffLine = { fg = c.specials.comment },
    diffIndexLine = { fg = c.colors.neutral.base },

    -- Health
    healthError = { fg = c.diagnostics.error.fg },
    healthSuccess = { fg = c.diagnostics.hint.fg },
    healthWarning = { fg = c.diagnostics.warn.fg },

    -- Quickfix & Help
    qfFileName = { fg = c.colors.blue.base },
    qfLineNr = { fg = c.colors.neutral.base },

    helpExample = { fg = c.specials.comment },
    helpCommand = { fg = c.colors.orange.base },

    -- Debug
    debugBreakpoint = { fg = c.diagnostics.info.fg },
    debugPC = { bg = c.bg.option },

    -- Filestypes
    dosIniLabel = { fg = c.colors.orange.base },
    htmlH1 = { fg = c.colors.orange.base },
    htmlH2 = "htmlH1",
  }
end

return M
