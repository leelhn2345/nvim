return {
  "akinsho/toggleterm.nvim",
  version = "*",
  cmd = "ToggleTerm",
  keys = {
    { "\\", ":ToggleTerm", desc = "ToggleTerm" },
    { "<esc>", "<C-\\><C-n>", mode = "t" },
  },
  opts = {
    open_mapping = [[\]],
    direction = "float",
  },
  config = true,
}
