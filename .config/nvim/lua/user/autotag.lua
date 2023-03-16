local status, plugin = pcall(require,'nvim-ts-autotag')
if not status then
    print('Error with plugin: ', plugin)
else
plugin.setup{
    autotag = {
        enable = true,
    }
}
end
