local status, plugin = pcall(require,'indent_blankline')
if not status then
    print('Error with plugin: ', plugin)
else
plugin.setup{
    show_current_context = true,
    show_current_context_start = true,
}

end

