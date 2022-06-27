local Remap = require("nulldays.keymap")
local nnoremap = Remap.nnoremap

nnoremap("<leader>ps", function()
    require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})
end)

nnoremap("<Leader>pf", function()
    require('telescope.builtin').find_files()
end)
