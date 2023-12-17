return {
  -- "craftzdog/solarized-osaka.nvim",
  -- "EdenEast/nightfox.nvim",
  "catppuccin/nvim",
  priority = 1000,
  opts = {},
  config = function()
    vim.cmd("colorscheme catppuccin")
  end
}
