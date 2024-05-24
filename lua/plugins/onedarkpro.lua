-- Lazy
return {
  "olimorris/onedarkpro.nvim",
  priority = 1000,
  config = function()
    require("onedarkpro").setup({
      plugins = {
        all = false,
      },
      options = {
        cursorline = true,
      },
      highlights = {
        DiagnosticUnderlineWarn = { underline = false, undercurl = nil },
      },
    })
  end,
  -- Ensure it loads first
}

-- somewhere in your config:
