local keymap = vim.keymap
local opts = { noremap = true, silent = true }

return {
	"nvim-tree/nvim-tree.lua",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("nvim-tree").setup({
			filters = {
				dotfiles = false,
				git_ignored = false,
			},
			view = {
				adaptive_size = true,
			},
			renderer = {
				indent_markers = {
					enable = true,
				},
			},
		})

		opts.desc = "Focus File Explorer"
		keymap.set("n", "<leader>em", ":NvimTreeFocus<CR>", opts)

		opts.desc = "Toggle File Explorer"
		keymap.set("n", "<leader>ee", ":NvimTreeToggle<CR>", opts)
	end,
}
