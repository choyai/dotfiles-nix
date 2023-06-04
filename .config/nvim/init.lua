--- Plugin Manager ---
require(".lazy")

--- Loads All Core Files ---
vim.cmd("runtime! lua/core/*.lua")

--- Loads All Plugins ---
vim.cmd("runtime! lua/plugins/colorschemes/*.lua")
vim.cmd("runtime! lua/plugins/*.lua")

