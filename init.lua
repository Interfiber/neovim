-- Global config
-- By hsta 1/4/2026

-- UI configuration (Some is neovide only)

if vim.g.neovide then
  vim.o.guifont = "Comic Code:h18"

  -- Use the system clipboard in neovide
  vim.o.clipboard = "unnamedplus"

  -- Drop shadow for floating windows 
  vim.g.neovide_floating_shadow = true
  vim.g.neovide_flating_z_height = 20
  vim.g.neovide_light_angle_degrees = 45
  vim.g.neovide_light_radius = 10

  -- Disable cursor animation
  vim.g.neovide_cursor_animation_length = 0

  -- Corner radius for floating windows
  vim.g.neovide_floating_corner_radius = 0.12

  -- Automatically set vim.g.background based off the current desktop theme
  vim.g.neovide_theme = 'auto'

  -- Fullscreen!
  vim.g.neovide_fullscreen = true
else
  vim.g.background = 'dark'
end

vim.o.guicursor = "" -- Always use block cursor, even when in insert mode

vim.o.number = true
vim.o.relativenumber = true

vim.o.termguicolors = true

-- Indent config
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.smartindent = true

vim.o.wrap = false

vim.o.scrolloff = 8
vim.o.signcolumn = "yes"
vim.o.hlsearch = false
vim.o.incsearch = false

vim.g.mapleader = '`'

-- Global keybinds
-- Some stolen from: https://github.com/ThePrimeagen/neovimrc/blob/master/lua/theprimeagen/remap.lua

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Init lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- import your plugins
    { import = "plugins" },
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "neobones" } },

  -- automatically check for plugin updates
  checker = { enabled = true },
})
