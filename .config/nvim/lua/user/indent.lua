local status, plugin = pcall(require,'indent_blankline')
if not status then
    print('Error with plugin: ', plugin)
else

plugin.setup{
}

end

