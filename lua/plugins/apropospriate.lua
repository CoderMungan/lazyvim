return {
  "miffi/apropospriate.nvim",
  lazy = false,
  priority = 1000, -- Renk şemasının diğer eklentilerden önce yüklenmesini sağlar
  config = function()
    vim.o.termguicolors = true
    vim.cmd.colorscheme("apropospriate")
    vim.o.background = "dark"
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  end,
}
