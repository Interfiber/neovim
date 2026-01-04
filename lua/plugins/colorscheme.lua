return {
  'ramojus/mellifluous.nvim',
  config = function ()
    require("mellifluous").setup({
      colorset = "alduin"
    })

    vim.cmd [[ colorscheme mellifluous ]]
  end
}
