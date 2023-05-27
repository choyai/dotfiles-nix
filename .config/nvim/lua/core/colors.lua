vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
vim.api.nvim_set_hl(0, "NonText", {bg = "none"})
vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
vim.api.nvim_set_hl(0, "LineNr", {bg = "none"})
vim.api.nvim_set_hl(0, "SignColumn", {bg = "none"})
vim.api.nvim_set_hl(0, "TabLine", {bg = "none"})
vim.opt.fillchars:append { eob = " " }

local status, color = pcall(vim.cmd.colorscheme,"onedark_dark")
-- local status, color = pcall(vim.cmd.colorscheme,"decay")
if not status then
    print('Error with colorscheme: ', color)
    vim.cmd.colorscheme("murphy")
end
