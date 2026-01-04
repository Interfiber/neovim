return {
   'nvim-telescope/telescope.nvim', tag = 'v0.2.1',
    dependencies = {
        'nvim-lua/plenary.nvim',
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
        'nvim-tree/nvim-web-devicons',
    },
    keys = {
      {
        "<leader>ff",
        require('telescope.builtin').find_files,
        desc = "Telescope find_files"
      },
      {
        "<leader>fg",
        require('telescope.builtin').live_grep,
        desc = "Telescope live grep"
      },
      {
        "<leader>fb",
        require('telescope.builtin').buffers,
        desc = "Telescope buffers"
      },
      {
        "<leader>fh",
        require('telescope.builtin').help_tags,
        desc = "Telescope help tags"
      },

      -- LSP telescope keybinds
      {
        "gf",
        require('telescope.builtin').lsp_references,
        desc = "Telescope lsp references"
      },
      {
        "<leader>ge",
        require('telescope.builtin').diagnostics,
        desc = "Telescope diagnostics"
      }
    },
    config = function ()
    end
}
