local map = vim.api.nvim_set_keymap


map('n', '<leader>ps', ":lua require('telescope.builtin').grep_string({ search = vim.fn.input('Grep For > ')})<CR>", {})
