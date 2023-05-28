--- Plugin Manager ---
require ".lazy"

--- All Core Files ---
vim.cmd('runtime! lua/core/*.lua')

--- All Plugins ---
vim.cmd('runtime! lua/plugins/colorschemes/*.lua')
vim.cmd('runtime! lua/plugins/*.lua')


