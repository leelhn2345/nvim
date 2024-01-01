return {
	"folke/todo-comments.nvim",
	event = "VeryLazy",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope.nvim",
	},
	opts = {},
	config = function()
		require("todo-comments").setup()
		local opts = { desc = "Find Todos", noremap = true, silent = true }
		vim.keymap.set("n", "<leader>td", ":TodoTelescope<CR>", opts)
	end,
}

-- keywords recognized as todo comments
-- FIX:
-- BUG:
-- ISSUE:
-- TODO:
-- HACK:
-- WARN:
-- PERF:
-- NOTE:
-- INFO:
