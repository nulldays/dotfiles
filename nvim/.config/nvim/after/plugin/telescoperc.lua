local map = vim.api.nvim_set_keymap
local configs = {noremap = true}

require'telescope'.setup {
    defaults = {
        mappings = {
            n = {
                ['<leader>ps'] = function() end
            }
        }
    }
}


map( 'n', '<leader>ps', ':lua require("telescope.builtin").live_grep()<CR>', configs)
map('n', '<leader>ff', ':lua require("telescope.builtin").find_files()<cr>', configs)

