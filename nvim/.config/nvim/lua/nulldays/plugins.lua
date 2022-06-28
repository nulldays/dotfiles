-- Plugins
local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/paqs/start/paq-nvim"

-- Bootstrap paq
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({ "git", "clone", "--depth=1", "https://github.com/savq/paq-nvim.git", install_path })
end

require "paq" {
  -- paq itself
  "savq/paq-nvim";

  -- Theme and Appearance
  "ishan9299/nvim-solarized-lua";
  "folke/tokyonight.nvim";
  "hoob3rt/lualine.nvim";
  "kyazdani42/nvim-web-devicons";

  -- Features
  {"nvim-treesitter/nvim-treesitter", run=vim.fn[":TSUpdate"]};
  "nvim-lua/plenary.nvim";
  "BurntSushi/ripgrep";
  "nvim-telescope/telescope.nvim";
  {"nvim-telescope/telescope-fzf-native.nvim", run="make"};

  -- LSP
  "neovim/nvim-lspconfig";
  "hrsh7th/nvim-cmp";
  "hrsh7th/cmp-nvim-lsp";
  "hrsh7th/cmp-buffer";
  "hrsh7th/cmp-path";
  "L3MON4D3/LuaSnip";
  "saadparwaiz1/cmp_luasnip";
}
