local status, plugin = pcall(require,'onedarkpro')
if not status then
    print('Plugin Error: ', plugin)
else
plugin.setup({
    options={
        transparency=true
    }
})
vim.cmd.colorscheme("onedark")
end
