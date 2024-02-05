return {
  "akinsho/toggleterm.nvim",
  version = "*",
  cmd = "ToggleTerm",
  keys = {
    {
      "<C-q>",
      "<C-\\><C-n>",
      mode = "t",
      desc = "Terminal normal mode",
    },
  },
  opts = {
    open_mapping = [[<c-\>]],
    direction = "float",
  },
  config = true,
}
