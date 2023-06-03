local status, plugin = pcall(require,'lsp-zero')
if not status then
    print('Error with plugin: ', plugin)
else

plugin.preset("recommended") 
plugin.setup() 

end
