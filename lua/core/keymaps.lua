local keymap = vim.keymap

local opts = { noremap = true, silent = true }

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G", { desc = "Select All" })

-- Window Management
keymap.set("n", "<leader>ss", ":vsplit<CR>", opts) -- Split Vertical
keymap.set("n", "<leader>sh", ":split<CR>", opts) -- Split Horizontal

-- Comments
local comment_opts = { noremap = false, desc = "Toggle Comment" }
vim.api.nvim_set_keymap("n", "<C-_>", "gcc", comment_opts)
vim.api.nvim_set_keymap("v", "<C-_>", "gcc", comment_opts)

-- Indenting
keymap.set("v", "<", "<gv", { desc = "Outdent" })
keymap.set("v", ">", ">gv", { desc = "Indent" })

-- Unmap keys
keymap.set("n", "q", "<Nop>", opts) -- I don't use macros at all... yet.
