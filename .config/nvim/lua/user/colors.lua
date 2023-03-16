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
vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
vim.api.nvim_set_hl(0, "NonText", {bg = "none"})
vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
vim.api.nvim_set_hl(0, "LineNr", {bg = "none"})
vim.api.nvim_set_hl(0, "SignColumn", {bg = "none"})
vim.api.nvim_set_hl(0, "TabLine", {bg = "none"})
vim.api.nvim_set_hl(0, "NvimTreeNormal", {bg = "none"})
end
