local status, plugin = pcall(require,'onedarkpro')
if not status then
    print('Plugin Error: ', plugin)
else
plugin.setup({})
end
