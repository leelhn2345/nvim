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
  { "f-person/git-blame.nvim", event = "VeryLazy" },
}
