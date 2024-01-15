local keymap = vim.keymap

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
        "^node_modules/",
        "%.venv/",
        "%.git/",
        "^dist/",
        "^target/",
        ".*%-lock%.json",
        ".*%.lock",
        "cache",
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
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-lua/plenary.nvim",
    "sharkdp/fd",
  },
  config = config,
  keys = {
    keymap.set("n", "<leader>ff", ":Telescope find_files<CR>"),
    keymap.set("n", "<leader>fK", ":Telescope keymaps<CR>"),
    keymap.set("n", "<leader>fh", ":Telescope help_tags<CR>"),
    keymap.set("n", "<leader>fa", ":Telescope <CR>"),
    keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>"),
    keymap.set("n", "<leader>fb", ":Telescope buffers<CR>"),
  },
}
