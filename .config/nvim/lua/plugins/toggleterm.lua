local status, plugin = pcall(require,'toggleterm')
if not status then
    print('Error with plugin: ', plugin)
else
plugin.setup({
    size = 10,
    open_mapping = [[<c-\>]],
    direction = 'horizontal',
})
end

