local config = function()
  local telescope = require("telescope")
  telescope.setup({
    defaults = {
      layout_strategy = "flex",
      layout_config = {
        preview_cutoff = 0,
        vertical = {
          prompt_position = "top",
        },
      },
      mappings = {
        i = {
          ["<C-j>"] = "move_selection_next",
          ["<C-k>"] = "move_selection_previous",
        },
      },
      file_ignore_patterns = {
        "%.git/",
        ".*%-lock%.json",
        ".*%.lock",
        --   "node_modules/",
        --   "%.venv/",
        --   "dist/",
        --   "target/",
        --   "%.(.*)cache",
        --   "%.next/",
      },
    },
    pickers = {
      find_files = {
        hidden = true,
      },
      keymaps = {
        layout_config = {
          vertical = {
            prompt_position = "bottom",
          },
        },
      },
    },
  })

  telescope.load_extension("fzf")
end

return {
  "nvim-telescope/telescope.nvim",
  lazy = false,
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons",
  },
  config = config,
  keys = {
    { "<leader>ff", ":Telescope find_files<CR>", silent = true },
    { "<leader>fK", ":Telescope keymaps<CR>", silent = true },
    { "<leader>fh", ":Telescope help_tags<CR>", silent = true },
    { "<leader>fa", ":Telescope <CR>", silent = true },
    { "<leader>fg", ":Telescope live_grep<CR>", silent = true },
    { "<leader>fb", ":Telescope buffers<CR>", silent = true },
    { "<leader>gb", ":Telescope git_branches<CR>", silent = true },
  },
}
