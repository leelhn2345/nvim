return {
  "folke/trouble.nvim",
  event = "VeryLazy",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "nvim-telescope/telescope.nvim",
  },
  keys = {
    {
      "<leader>q",
      ":TroubleToggle workspace_diagnostics<CR>",
      desc = " Workspace Diagnostics ",
    },
  },
  opts = { auto_close = true },
}
