return {
  "craftzdog/solarized-osaka.nvim",
  lazy = true,
  priority = 1000,
  opts = function()
    return {
      transparent = true,
      on_highlights = function(hl, colors)
        hl.DiagnosticUnderlineWarn = { underline = false, undercurl = nil }
      end,
    }
  end,
}
