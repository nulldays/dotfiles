local previewers = require("telescope.previewers")

require('telescope').setup {
    promp_prefix = ">",
    color_devicons = true,
    file_ignore_patterns = {
        ".git",
        "node_modules",
    }
}
require('telescope').load_extension('fzf')


