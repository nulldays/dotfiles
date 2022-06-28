local previewers = require("telescope.previewers")

require('telescope').setup {
    promp_prefix = ">",
    color_devicons = true,
}
require('telescope').load_extension('fzf')


