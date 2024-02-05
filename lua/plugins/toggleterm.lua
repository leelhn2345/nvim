return {
  "akinsho/toggleterm.nvim",
  version = "*",
  cmd = "ToggleTerm",
  keys = {
    { "<C-\\>", ":ToggleTerm", desc = "ToggleTerm" },
    { "<esc>", "<C-\\><C-n>", mode = "t" },
  },
  opts = {
    open_mapping = [[<c-\>]],
    direction = "float",
  },
  config = true,
}
