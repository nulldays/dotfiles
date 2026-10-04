--
-- init.lua
--

vim.o.winborder = "bold"
vim.o.signcolumn = "yes"

vim.o.swapfile = false

vim.o.wrap = false
vim.o.number = true
vim.o.cursorcolumn = false
vim.o.ignorecase = true
vim.o.smartindent = true
vim.o.termguicolors = true
vim.o.undofile = true

vim.g.mapleader = " "

--
-- Plugins
--

local hooks = function(ev)
    local name, kind = ev.data.spec.name, ev.data.kindj

    if name == 'fzf-native' and (kind == 'install' or kind == 'update') then
        vim.system({ 'make' }, { cwd = ev.data.path })
    end
end
vim.api.nvim_create_autocmd('PackChanged', { callback = hooks })

vim.pack.add({
    -- Colorscheme
    { src = 'https://github.com/vague-theme/vague.nvim' },
    -- Oil
    -- { src = "https://github.com/stevearc/oil.nvim" },
    -- Telescope
    { src = "https://github.com/nvim-telescope/telescope.nvim" },
    { src = "https://github.com/nvim-lua/plenary.nvim" },
    { src = "https://github.com/nvim-telescope/telescope-fzf-native.nvim", name = 'fzf-native' },
    -- LSP
    { src = "https://github.com/neovim/nvim-lspconfig" },
    { src = "https://github.com/mason-org/mason.nvim" },
    { src = "https://github.com/nvim-treesitter/nvim-treesitter" }
})

--
-- LSP
--

require("mason").setup()
require("nvim-treesitter").install({
    'lua', 'c', 'cpp',
})
-- luals is a copy of the standard lua_ls with the vim runtime path included,
-- Removes the errors in the config.
vim.lsp.enable({
    "luals",
    "clangd", "clang-format",
    "html-lsp", "css-lsp"
})

--
-- Keymaps
--

vim.keymap.set('n', '<leader>o', ':update<CR> :source<CR>')
vim.keymap.set('n', '<leader>w', ':write<CR>')
vim.keymap.set('n', '<leader>q', ':quit<CR>')

-- Buffers


vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format)
vim.keymap.set('n', '<leader>f', "")

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })

-- Colorscheme

vim.cmd.colorscheme('vague')
vim.cmd(":hi statusline guibg=NONE")
