local status, plugin = pcall(require,'dap')
if not status then
    print('Error with plugin: ', plugin)
else
plugin.configurations.python{
    {
        type = 'python';
        request = 'launch';
        name = "Launch file";
        program = "${file}";
        pythonPath = function()
            return '/usr/bin/python'
        end;
    },
}
end
