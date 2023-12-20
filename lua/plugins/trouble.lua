return {
	"folke/trouble.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons", "nvim-telescope/telescope.nvim" },
	opts = {},
	config = function()
		require("trouble").setup({
			action_keys = {
				toggle_mode = {},
			},
		})
		local opts = { noremap = true, silent = true, desc = "Workspace Diagnostics" }
		vim.keymap.set("n", "<leader>q", ":TroubleToggle workspace_diagnostics<CR>", opts)
	end,
}
