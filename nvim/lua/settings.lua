-- settings.lua

-- Global Aliases
local cmd = vim.cmd  -- to execute Vim commands e.g. cmd('pwd')
local fn = vim.fn    -- to call Vim functions e.g. fn.bufnr()
local g = vim.g      -- a table to access global variables
local set = vim.opt  -- to set options

set.number = true
set.termguicolors = true
cmd "colorscheme dracula"


