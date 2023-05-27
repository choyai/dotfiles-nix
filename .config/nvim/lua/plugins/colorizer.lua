local status, plugin = pcall(require,'colorizer')
if not status then
    print('Error with plugin: ', plugin)
else
plugin.setup()
end

