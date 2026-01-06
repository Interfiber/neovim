return {
	"nvim-mini/mini.nvim",
	config = function()
		-- Better in/around text operators
		require("mini.ai").setup({})

		-- Statusline
		require("mini.statusline").setup({})

		require("mini.starter").setup({
			header = io.open(os.getenv("HOME") .. "/.config/nvim/logo.txt", "r"):read("*all"),
		})
	end,
}
