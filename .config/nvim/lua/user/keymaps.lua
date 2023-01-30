local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
local map = vim.keymap.set
--[[ local nvtree = require('nvim-tree.config').nvim_tree_callback ]]
local tele = require('telescope.builtin')



--Leader Key
map("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

---------- Normal Mode ----------

--Window Resize
map("n", "<S-h>", ":vertical resize -2<CR>", opts)
map("n", "<S-j>", ":resize -2<CR>", opts)
map("n", "<S-k>", ":resize +2<CR>", opts)
map("n", "<S-l>", ":vertical resize +2<CR>", opts)


--Tabs
map("n", "<leader>h", ":tabprevious<CR>", opts)
map("n", "<leader>l", ":tabnext<CR>", opts)
map("n", "<leader>t", ":tabnew<CR>", opts)

---------- Insert Mode ----------

--Navigation
map("i", "jj", "<ESC>", opts)

---------- Visual Mode ----------

--Move Selections
map("v", "<S-h>", "< gv", opts) 
map("v", "<S-j>", ":m '>+1<CR>gv=gv", opts)
map("v", "<S-k>", ":m '<-2<CR>gv=gv", opts)
map("v", "<S-l>", "> gv", opts)


---------- Nvim Tree ----------
map("n", "<leader>d", ":NvimTreeToggle<CR>", opts)
-- vim.g.nvim_tree_bindings = {
--     {key = "<Tab>", cb = nvtree("cd")},
-- }
---------- Telescope ----------
map('n', '<leader>f', tele.find_files, {})
map('n', '<leader>gf', tele.git_files, {})
map('n', '<leader>b', tele.buffers, {})

