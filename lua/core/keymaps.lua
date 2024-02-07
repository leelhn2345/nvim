local opts = { noremap = true, silent = true }

-- Select all
vim.keymap.set("n", "<C-a>", "gg<S-v>G", { desc = "Select All" })

-- Window Management
vim.keymap.set("n", "<leader>ss", ":vsplit<CR>", opts) -- Split Vertical
vim.keymap.set("n", "<leader>sh", ":split<CR>", opts) -- Split Horizontal

-- Indenting
vim.keymap.set("v", "<", "<gv", { desc = "Outdent" })
vim.keymap.set("v", ">", ">gv", { desc = "Indent" })

-- Unmap keys
vim.keymap.set("n", "q", "<Nop>") -- I don't use macros at all... yet.

-- Move selected lines with shift+j or shift+k
vim.keymap.set(
  "v",
  "J",
  ":m '>+1<CR>gv=gv",
  { desc = "move selected lines down" }
)
vim.keymap.set(
  "v",
  "K",
  ":m '<-2<CR>gv=gv",
  { desc = "move selected lines up" }
)

-- Copy to system clipboard
vim.keymap.set(
  { "n", "v" },
  "y",
  [["+y]],
  { desc = "Copy to system clipboard" }
)
vim.keymap.set("n", "Y", [["+Y]], { desc = "Copy to system clipboard" })

-- Keep cursor centred while scrolling up and down
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Page down" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Page up" })
