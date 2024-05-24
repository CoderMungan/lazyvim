return {
  "folke/tokyonight.nvim",
  lazy = true,
  opts = {
    style = "night", -- Choose from `storm`, `moon`, `night` and `day`
  },
  config = function()
    require("tokyonight").setup({
      style = "night", -- The theme comes in four styles, `storm`, `moon`, a darker variant `night` and `day`
      light_style = "day", -- The theme is used when the background is set to light
      transparent = false, -- Enable this to disable setting the background color
      terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
      styles = {
        -- Style to be applied to different syntax groups
        -- Value is any valid attr-list value for `:help nvim_set_hl`
        comments = { italic = true },
        functions = { underline = false },
        variables = { underline = false },
        -- Background styles. Can be "dark", "transparent" or "normal"
        sidebars = "dark", -- style for sidebars
        floats = "dark", -- style for floating windows
      },
      sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows
      day_brightness = 0, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
      hide_inactive_statusline = false, -- Hide inactive statuslines and replace them with a thin border
      dim_inactive = false, -- Dims inactive windows
      lualine_bold = false, -- Section headers in the lualine theme will be bold when true

      on_colors = function(colors)
        colors.fg = "#61afef"
      end,
      -- Override specific highlights to use other groups or a hex color
      on_highlights = function(highlights, colors)
        highlights.DiagnosticUnderlineWarn = { underline = false, undercurl = nil }
        highlights.Normal = { fg = colors.fg, bg = colors.bg }
        highlights.Comment = { fg = "#5c6370", italic = true }
        highlights.Include = { fg = "#ffff00" }
        highlights.Function = { fg = "#61afef", underline = false }
        highlights.Variable = { fg = "#e06c75", underline = false }
        highlights.String = { fg = "#98c379" }
        highlights.Number = { fg = "#d19a66" }
        highlights.Constant = { fg = "#d19a66" }
        highlights.Type = { fg = "#a25fff", underline = false }
        highlights.PunctDelimiter = { fg = colors.fg }
        highlights.PunctBracket = { fg = colors.fg }
        highlights.PunctSpecial = { fg = colors.fg }
        highlights.Field = { fg = "#d19a66" }
        highlights.Parameter = { fg = colors.fg }
        highlights.Property = { fg = "#d19a66" }
        highlights.Tag = { fg = "#e06c75" }
        highlights.TagDelimiter = { fg = colors.fg }
        highlights.Identifier = { fg = "#61afef" }
        highlights.TSConstant = { fg = "#d19a66" }
        highlights.TSField = { fg = "#e06c75" }
        highlights.TSVariable = { fg = "#e06c75" }
        highlights.Statement = { fg = "#ffff00" }
        highlights.Unique = { fg = "#ffff00" }
      end,
    })
  end,
}
