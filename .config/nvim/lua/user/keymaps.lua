local opts = { noremap = true, silent = true }
local map = vim.keymap.set

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

---------- Telescope ----------
map('n', '<leader>f', ":Telescope find_files<CR>", opts)
map('n', '<leader>gf', ":Telescope git_files<CR>",opts) 

---------- BufferLine ----------
map("n", "<leader>1", ":BufferLineGoToBuffer 1<CR>", opts) 
map("n", "<leader>2", ":BufferLineGoToBuffer 2<CR>", opts) 
map("n", "<leader>3", ":BufferLineGoToBuffer 3<CR>", opts) 
map("n", "<leader>4", ":BufferLineGoToBuffer 4<CR>", opts) 
map("n", "<leader>5", ":BufferLineGoToBuffer 5<CR>", opts) 
map("n", "<leader>6", ":BufferLineGoToBuffer 6<CR>", opts) 
map("n", "<leader>7", ":BufferLineGoToBuffer 7<CR>", opts) 
map("n", "<leader>8", ":BufferLineGoToBuffer 8<CR>", opts) 
map("n", "<leader>9", ":BufferLineGoToBuffer 9<CR>", opts) 

map("n", "<leader>h", ":BufferLineCyclePrev<CR>", opts) 
map("n", "<leader>l", ":BufferLineCycleNext<CR>", opts) 

map("n", "<C-A>h", ":BufferLineMovePrev<CR>", opts) 
map("n", "<C-A>l", ":BufferLineMoveNext<CR>", opts) 

map("n", "<leader>q", ":bdelete<CR>", opts) 

