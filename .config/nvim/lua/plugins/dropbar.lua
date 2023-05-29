local status, plugin = pcall(require,'dropbar')
if not status then
    print('Error with plugin: ', plugin)
else
plugin.setup()
end

