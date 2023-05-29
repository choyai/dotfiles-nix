local status, color = pcall(vim.cmd.colorscheme,"hardhacker")
if not status then
    print(color , 'using murphy instead')
    vim.cmd.colorscheme("murphy") 
end

-- vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
-- vim.api.nvim_set_hl(0, "NonText", {bg = "none"})
-- vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
-- vim.api.nvim_set_hl(0, "LineNr", {bg = "none"})
-- vim.api.nvim_set_hl(0, "SignColumn", {bg = "none"})
-- vim.api.nvim_set_hl(0, "VertSplit", {bg = "none"})
-- vim.api.nvim_set_hl(0, "TabLine", {bg = "none"})
vim.opt.fillchars:append { eob = " " }

