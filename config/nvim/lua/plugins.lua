-- Plugins
local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/paqs/start/paq-nvim'

-- Bootstrap paq
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', '--depth=1', 'https://github.com/savq/paq-nvim.git', install_path})
end

require "paq" {
    -- paq itself
    "savq/paq-nvim";
    -- Theme
    {"Mofiqul/dracula.nvim", as="Dracula"};
    {"altercation/vim-colors-solarized", as="Solarized"};
    -- Apperance
    "kyazdani42/nvim-web-devicons";
    "kyazdani42/nvim-tree.lua";
    "hoob3rt/lualine.nvim";
    -- LSP
    "neovim/nvim-lspconfig";
}
