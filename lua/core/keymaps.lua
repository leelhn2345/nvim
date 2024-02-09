-- Select all
vim.keymap.set("n", "<C-a>", "gg<S-v>G", { desc = "Select All" })

-- Window Management
vim.keymap.set(
  "n",
  "<leader>ss",
  ":vsplit<CR>",
  { silent = true, desc = "Split Vertical" }
)
vim.keymap.set(
  "n",
  "<leader>sh",
  ":split<CR>",
  { silent = true, desc = "Split Horizontal" }
)

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
  { silent = true, desc = "move selected lines down" }
)
vim.keymap.set(
  "v",
  "K",
  ":m '<-2<CR>gv=gv",
  { silent = true, desc = "move selected lines up" }
)

-- Yank to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Yank motion" })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "Yank line" })

-- Keep cursor centred while scrolling up and down
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Page down" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Page up" })

-- Keep cursor centred while searching
vim.keymap.set("n", "n", "nzz", { desc = "Next search result" })
vim.keymap.set("n", "N", "Nzz", { desc = "Prev search result" })

-- Joins next line without moving cursor
vim.keymap.set("n", "J", "mzJ`z", { desc = "Joins the line below" })
