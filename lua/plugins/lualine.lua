local config = function()
	require("lualine").setup({
		options = {
			theme = "tokyonight",
			globalstatus = true,
		},
	})
end
return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = config,
}
