local status, plugin = pcall(require,'dapui')
if not status then
    print('Error with plugin: ', plugin)
else
plugin.setup()
end

