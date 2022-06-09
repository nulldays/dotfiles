-- settings.lua
local set = vim.opt -- to set options

vim.cmd [[
    syntax enable
    colorscheme solarized
]]
set.swapfile       = false
set.background     = 'light'
set.termguicolors  = true
set.signcolumn     = 'yes'
set.wildmode       = "longest:full"
set.wildoptions    = "pum"
set.splitbelow     = true
set.splitright     = true
set.guicursor      = ''
set.number         = true
set.relativenumber = true
set.showcmd        = true
set.cmdheight      = 1
set.ignorecase     = true
set.smartcase      = true
set.hlsearch       = false
set.incsearch      = true
set.hidden         = true
set.wrap           = false
set.scrolloff      = 8
set.updatetime     = 1000
set.showmatch      = true

-- Necessary for nvim-cmp
set.completeopt = {"menu", "menuone", "noselect"}

-- Tabs
set.tabstop     = 4
set.softtabstop = 4
set.shiftwidth  = 4
set.expandtab   = true
