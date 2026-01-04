return {
  'nvim-mini/mini.nvim',
  config = function ()
    require('mini.ai').setup({})
    require('mini.statusline').setup({})
  end
}
