return {
	"aznhe21/actions-preview.nvim",

	keys = {
		{
			"ca",
			function()
				require("actions-preview").code_actions()
			end,
			desc = "Preview code actions",
		},
	},
}
