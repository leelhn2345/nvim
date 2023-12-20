return {
	"NeogitOrg/neogit",
	dependencies = {
		"nvim-lua/plenary.nvim", -- required
		"sindrets/diffview.nvim", -- optional - Diff integration

		"nvim-telescope/telescope.nvim", -- optional
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
		})

		local keymap = vim.keymap
		keymap.set("n", "gi", ":Neogit<CR>", { desc = "Git Status" })
		keymap.set("n", "<leader>gb", ":Telescope git_branches<CR>", { desc = "Git Branches" })
	end,
}
