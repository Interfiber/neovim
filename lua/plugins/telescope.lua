return {
	"nvim-telescope/telescope.nvim",
	tag = "v0.2.1",
	lazy = false,
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
	},
	keys = {
		{
			"<leader>ff",
			function()
				require("telescope.builtin").find_files()
			end,
			desc = "Telescope find_files",
		},
		{
			"<leader>fg",
			function()
				require("telescope.builtin").live_grep()
			end,
			desc = "Telescope live grep",
		},
		{
			"<leader>fb",
			function()
				require("telescope.builtin").buffers()
			end,
			desc = "Telescope buffers",
		},
		{
			"<leader>fh",
			function()
				require("telescope.builtin").help_tags()
			end,
			desc = "Telescope help tags",
		},

		-- LSP telescope keybinds
		{
			"gf",
			function()
				require("telescope.builtin").lsp_references()
			end,
			desc = "Telescope lsp references",
		},
		{
			"<leader>ge",
			function()
				require("telescope.builtin").diagnostics()
			end,
			desc = "Telescope diagnostics",
		},
	},
	config = function() end,
}
