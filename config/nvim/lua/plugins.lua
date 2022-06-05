-- Plugins
local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/paqs/start/paq-nvim'

-- Bootstrap paq
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({ 'git', 'clone', '--depth=1', 'https://github.com/savq/paq-nvim.git', install_path })
end

require "paq" {
  -- paq itself
  "savq/paq-nvim";

  -- Theme
  'ishan9299/nvim-solarized-lua';

  -- Features
  'nvim-telescope/telescope.nvim';
  'nvim-lua/plenary.nvim';
  'BurntSushi/ripgrep';
  "hoob3rt/lualine.nvim";
  -- May not need nvim-tree?
  --"kyazdani42/nvim-web-devicons";
  --"kyazdani42/nvim-tree.lua";

  -- LSP
  "neovim/nvim-lspconfig";
}
