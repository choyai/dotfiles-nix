--- Plugin Manager ---
require ".lazy"

--- Core ---
vim.cmd('runtime! lua/core/*.lua')

--- Plugins ---
vim.cmd('runtime! lua/plugins/colorschemes/*.lua')
vim.cmd('runtime! lua/plugins/*.lua')

