local status, plugin = pcall(require,'decay')
if not status then
    print('Plugin Error: ', plugin)
else
plugin.setup({
  style = 'default',
  nvim_tree = {
    contrast = true, -- or false to disable tree contrast
  },
})
end
