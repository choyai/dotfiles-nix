-- OR setup with some options
require("nvim-tree").setup({
    sort_by = "case_sensitive",
    open_on_setup = false,
    open_on_setup_file = false,
    view = {
        adaptive_size = true,
        width = {
            min = 300,
            max = 300,
        },
      --  mappings = {
      --      list = {
      --          { key = "u", action = "dir_up" },
      --          { key = "<Tab>", action = "cd" },
      --      },
      --  },
    },
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = false,
    },
})
