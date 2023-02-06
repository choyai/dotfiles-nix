local status, plugin = pcall(require,'bufferline')
if not status then
    print('Error with plugin: ', plugin)
else
plugin.setup{
}

end

