local M = {}

M.general = {
  n = {
    ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "window left" },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "window down" },
    ["<C-j>"] = { "<cmd> TmuxNavigateUp<CR>", "window up" },
    ["<C-k>"] = { "<cmd> TmuxNavigateDown<CR>", "window right" },
  },
}
