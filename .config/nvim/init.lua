-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require "user.options"
require "user.keymaps"
require "user.plugins"
--require "user.telescope"
require "user.colors"
require "user.nvimtree"
require "user.treesitter"
require "user.lsp"
