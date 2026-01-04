local m = {}

m.setup = function ()
  vim.o.winbar = "%{%v:lua.require'nvim-navic'.get_location()%}"
end

return m
