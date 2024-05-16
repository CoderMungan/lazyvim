-- Select All
vim.api.nvim_set_keymap("n", "<C-a>", "gg<S-v>G", { noremap = true })
-- Move to line
vim.api.nvim_set_keymap("n", "<C-u>", "yyddkP", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-d>", "yyddjP", { noremap = true })
-- New Tab
vim.api.nvim_set_keymap("n", "te", ":tabedit<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Tab>", ":bn<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-Tab>", ":bp<CR>", { noremap = true, silent = true })
-- Kill Buffer
vim.api.nvim_set_keymap("n", "<leader>d", ":bd<CR>", { noremap = true, silent = true })
-- Split Window
vim.api.nvim_set_keymap("n", "|", ":vsp<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "_", ":sp<CR>", { noremap = true, silent = true })
-- Resize Window
vim.api.nvim_set_keymap("n", "<A-Left>", "<C-w><", { noremap = true })
vim.api.nvim_set_keymap("n", "<A-Right>", "<C-w>>", { noremap = true })
vim.api.nvim_set_keymap("n", "<A-Up>", "<C-w>+", { noremap = true })
vim.api.nvim_set_keymap("n", "<A-Down>", "<C-w>-", { noremap = true })
