-- OR setup with some options
local status, plugin = pcall(require,'nvim-tree')
if not status then
    print('Plugin Error: ', plugin)
else

plugin.setup({
    sort_by = "case_sensitive",
    view = {
        adaptive_size = true,
        preserve_window_proportions = true,
        width = {
            min = 20,
            max = 50,
        },
       mappings = {
           list = {
               { key = "u", action = "dir_up" },
               { key = "<Tab>", action = "cd" },
           },
       },
    },
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = false,
    },
})

end
