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
        "node_modules/",
        "%.venv/",
        "%.git/",
        "dist/",
        "target/",
        ".*%-lock%.json",
        ".*%.lock",
        "%.(.*)cache",
        "%.next/",
      },
    },
    pickers = {
      find_files = {
        no_ignore = true,
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
    { "<leader>ff", ":Telescope find_files<CR>" },
    { "<leader>fK", ":Telescope keymaps<CR>" },
    { "<leader>fh", ":Telescope help_tags<CR>" },
    { "<leader>fa", ":Telescope <CR>" },
    { "<leader>fg", ":Telescope live_grep<CR>" },
    { "<leader>fb", ":Telescope buffers<CR>" },
    { "<leader>gb", ":Telescope git_branches<CR>" },
    { "<leader>gb", ":Telescope git_branches<CR>" },
  },
}
