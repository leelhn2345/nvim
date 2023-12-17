return {
	"folke/flash.nvim",
	event = "VeryLazy",
	opts = {
		modes = {
			char = {
				enabled = false,
				multi_line = false,
			},
		},
	},
	dependencies = { "folke/which-key.nvim" },
	config = function()
		local wk = require("which-key")
		wk.register({
			["<leader>j"] = {
				name = "Flash",
				-- j = {
				-- function()
				-- 		require("flash").jump()
				-- 	end,
				-- 	"Jump",
				-- },
				t = {
					function()
						require("flash").treesitter()
					end,
					"Treesitter",
				},
				j = {
					function()
						require("flash").treesitter_search()
					end,
					"Treesitter Search",
				},
			},
		})
	end,
}
