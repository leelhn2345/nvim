local keymap = vim.keymap

local opts = { noremap = true, silent = true }

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G", { desc = "Select All" })

-- Pane Navigation
keymap.set("n", "<C-h>", "<C-w>h", opts) -- Left
keymap.set("n", "<C-j>", "<C-w>j", opts) -- Down
keymap.set("n", "<C-k>", "<C-w>k", opts) -- Up
keymap.set("n", "<C-l>", "<C-w>l", opts) -- Down

-- Tab Navigation
keymap.set("n", "<leader>nt", ":tabnew<CR>", opts) -- New Tab
keymap.set("n", "<tab>", ":tabnext<CR>", opts) -- Next Tab
keymap.set("n", "<s-tab>", ":tabprev<CR>", opts) -- Prev Tab

-- Window Management
keymap.set("n", "<leader>ss", ":vsplit<CR>", opts) -- Split Vertical
keymap.set("n", "<leader>sh", ":split<CR>", opts) -- Split Horizontal
--
-- Comments
local comment_opts = { noremap = false, desc = "Toggle Comment" }
vim.api.nvim_set_keymap("n", "<C-_>", "gcc", comment_opts)
vim.api.nvim_set_keymap("v", "<C-_>", "gcc", comment_opts)

-- Indenting
keymap.set("v", "<", "<gv", { desc = "Outdent" })
keymap.set("v", ">", ">gv", { desc = "Indent" })

-- Docstring
vim.api.nvim_set_keymap("n", '<leader>""', ":lua require('neogen').generate()<CR>", opts)
