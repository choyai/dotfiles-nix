local status, plugin = pcall(require,'bufferline')
if not status then
    print('Error with plugin: ', plugin)
else

plugin.setup{
    options = {
        close_command = "bdelete %d",
        numbers = "ordinal",
        offsets = {{filetype = "NvimTree", text = "", padding = 1}},
    },
}

end

