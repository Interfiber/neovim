return {
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local on_attach = function(client, bufnr)
				if client.server_capabilities.documentSymbolProvider then
					require("nvim-navic").attach(client, bufnr)
          require("lsp_signature").on_attach(signature_setup, bufnr)
				end
			end

			-- Configure
			--
			vim.lsp.config("clangd", {
				on_attach = on_attach,
			})

			vim.lsp.config("rust-analyzer", {
				on_attach = on_attach,
			})

			-- Enable LSP servers
			vim.lsp.enable("clangd")
			vim.lsp.enable("rust-analyzer")
		end,

		-- Keybinds for vim.lsp, some LSP keybinds are also inside telescope
		keys = {
			{
				"gd",
				vim.lsp.buf.definition,
				desc = "(LSP) Goto def",
			},
			{
				"<leader>gd",
				vim.lsp.buf.declaration,
				desc = "(LSP) Goto declaration",
			},
			{
				"grr",
				vim.lsp.buf.rename,
				desc = "(LSP) Rename symbol",
			},
		},
	},
	{
		"j-hui/fidget.nvim",
		opts = {},
	},
	{
		"stevearc/conform.nvim",
		opts = {
			formatters_by_ft = {
				lua = { "stylua" },
			},
			format_on_save = {
				timeout_ms = 500,
				lsp_format = "fallback",
			},
		},
	},
  {
    "ray-x/lsp_signature.nvim",
    opts = {
      hint_prefix = ""
    }
  },
  {
    "folke/lazydev.nvim",
    ft = "lua", -- only load on lua files
    opts = {},
  }
}
