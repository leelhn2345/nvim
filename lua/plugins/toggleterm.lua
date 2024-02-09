return {
  "akinsho/toggleterm.nvim",
  version = "*",
  cmd = "ToggleTerm",
  keys = {
    { "\\", ":ToggleTerm", desc = "Toggle Terminal" },
    { "<esc>", "<C-\\><C-n>", mode = "t" },
  },
  opts = {
    open_mapping = [[\]],
    direction = "float",
    insert_mappings = false,
  },
}
