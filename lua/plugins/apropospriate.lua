return {
  "miffi/apropospriate.nvim",
  lazy = false,
  priority = 1000, -- Ensure that the colorscheme loads before any other plugins
  config = function()
    vim.o.termguicolors = true
    vim.cmd.colorscheme("apropospriate")
  end,
}
