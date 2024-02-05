return {
  "nvim-pack/nvim-spectre",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  event = "VeryLazy",
  config = function()
    require("spectre").setup({
      mapping = {
        ["quit"] = {
          map = "q",
          cmd = '<cmd>lua require("spectre").close()<CR>',
          desc = "quit spectre",
        },
      },
    })

    vim.keymap.set(
      "n",
      "<leader>S",
      '<cmd>lua require("spectre").toggle()<CR>',
      {
        desc = "Toggle Spectre",
      }
    )
    vim.keymap.set(
      "n",
      "<leader>sw",
      '<cmd>lua require("spectre").open_visual({select_word=true})<CR>',
      {
        desc = "Search current word",
      }
    )
    vim.keymap.set(
      "v",
      "<leader>sw",
      '<esc><cmd>lua require("spectre").open_visual()<CR>',
      {
        desc = "Search current word",
      }
    )
    vim.keymap.set(
      "n",
      "<leader>sf",
      '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>',
      {
        desc = "Search on current file",
      }
    )
  end,
}
