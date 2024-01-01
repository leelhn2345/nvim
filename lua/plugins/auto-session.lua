return {
	"rmagatti/auto-session",
	-- can't be VeryLazy
	-- Mason can't be VeryLazy as well due to LSP on 1st file read
	config = function()
		require("auto-session").setup({
			auto_session_allowed_dirs = { "~/code/*", "~/.config/nvim" },
			pre_save_cmds = { "NvimTreeClose" },
		})
	end,
}
