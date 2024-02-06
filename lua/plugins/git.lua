return {
  -- Version Control
  {
    "NeogitOrg/neogit",
    cmd = { "Neogit" },
    dependencies = {
      "nvim-lua/plenary.nvim", -- required
      "sindrets/diffview.nvim", -- optional - Diff integration

      "nvim-telescope/telescope.nvim", -- optional
    },
    keys = {
      {
        "gi",
        ":Neogit<CR>",
        desc = "Neogit (Git Info)",
      },
    },
    config = function()
      require("neogit").setup({
        integrations = {
          diffview = true,
          telescope = true,
        },
        status = {
          recent_commit_count = 50,
        },
        mappings = {
          finder = {
            ["<c-j>"] = "Next",
            ["<c-k>"] = "Previous",
          },
        },
      })
    end,
  },

  -- Git Blame
  {
    "lewis6991/gitsigns.nvim",
    event = "VeryLazy",
    config = function()
      -- local blame_format = "  <author> • <author_time:%d %b %Y> • <summary>"
      local blame_format =
        "  <author> • <author_time:%a %d %b %Y %H:%M:%S> <author_tz> • <summary>"

      require("gitsigns").setup({
        current_line_blame = true,
        current_line_blame_opts = {
          delay = 0,
          ignore_whitespace = true,
          virt_text_priority = 5000,
        },
        current_line_blame_formatter = blame_format,
      })
    end,
  },
}
