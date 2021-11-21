-- settings.lua

-- Global Aliases
local cmd = vim.cmd  -- to execute Vim commands e.g. cmd('pwd')
local fn = vim.fn    -- to call Vim functions e.g. fn.bufnr()
local g = vim.g      -- a table to access global variables
local set = vim.opt  -- to set options

local o = vim.o
local wo = vim.o
local bo = vim.o

-- Basic Configs 
cmd "syntax enable"
set.termguicolors = true
set.background="dark"
cmd "colorscheme dracula"
o.lazyredraw = true
o.ignorecase = true
cmd "filetype plugin indent on"
cmd "set splitbelow splitright"

-- Tabs
bo.expandtab = true
bo.tabstop   = 4
bo.shiftwidth= 4

wo.number = true
