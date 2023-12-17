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
		})

		local keymap = vim.keymap
		keymap.set("n", "<leader>ng", ":Neogit<CR>", { desc = "Git Status" })
	end,
}
