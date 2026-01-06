return {
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup({
				signcolumn = auto,
				attach_to_untracked = false,
				on_attach = function()
					vim.wo.signcolumn = "yes"
				end,
			})
		end,
	},
}
