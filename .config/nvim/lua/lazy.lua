local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
    print ([[
Installing lazy.nvim and plugins.....
⠀⣞⢽⢪⢣⢣⢣⢫⡺⡵⣝⡮⣗⢷⢽⢽⢽⣮⡷⡽⣜⣜⢮⢺⣜⢷⢽⢝⡽⣝
⠸⡸⠜⠕⠕⠁⢁⢇⢏⢽⢺⣪⡳⡝⣎⣏⢯⢞⡿⣟⣷⣳⢯⡷⣽⢽⢯⣳⣫⠇
⠀⠀⢀⢀⢄⢬⢪⡪⡎⣆⡈⠚⠜⠕⠇⠗⠝⢕⢯⢫⣞⣯⣿⣻⡽⣏⢗⣗⠏⠀
⠀⠪⡪⡪⣪⢪⢺⢸⢢⢓⢆⢤⢀⠀⠀⠀⠀⠈⢊⢞⡾⣿⡯⣏⢮⠷⠁⠀⠀
⠀⠀⠀⠈⠊⠆⡃⠕⢕⢇⢇⢇⢇⢇⢏⢎⢎⢆⢄⠀⢑⣽⣿⢝⠲⠉⠀⠀⠀⠀
⠀⠀⠀⠀⠀⡿⠂⠠⠀⡇⢇⠕⢈⣀⠀⠁⠡⠣⡣⡫⣂⣿⠯⢪⠰⠂⠀⠀⠀⠀
⠀⠀⠀⠀⡦⡙⡂⢀⢤⢣⠣⡈⣾⡃⠠⠄⠀⡄⢱⣌⣶⢏⢊⠂⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⢝⡲⣜⡮⡏⢎⢌⢂⠙⠢⠐⢀⢘⢵⣽⣿⡿⠁⠁⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠨⣺⡺⡕⡕⡱⡑⡆⡕⡅⡕⡜⡼⢽⡻⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⣼⣳⣫⣾⣵⣗⡵⡱⡡⢣⢑⢕⢜⢕⡝⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⣴⣿⣾⣿⣿⣿⡿⡽⡑⢌⠪⡢⡣⣣⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⡟⡾⣿⢿⢿⢵⣽⣾⣼⣘⢸⢸⣞⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠁⠇⠡⠩⡫⢿⣝⡻⡮⣒⢽⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ]])
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
    --- Lazy ---
    "folke/lazy.nvim", --Lazy will manage itself

    --- Colorschemes ---
    {"hardhackerlabs/theme-vim",name = "hardhacker",lazy = false,priority = 1000},
    {"catppuccin/nvim", name = "catppuccin",lazy = false,priority = 1000},
    {'rose-pine/neovim',name = 'rose-pine',lazy = false,priority = 1000},
    {"olimorris/onedarkpro.nvim",lazy = false,priority = 1000},
    {"Mofiqul/dracula.nvim",lazy = false,priority = 1000},
    {'folke/tokyonight.nvim',lazy = false,priority = 1000},
    {"ellisonleao/gruvbox.nvim",lazy = false,priority = 1000},

    --- The Rest ----
    "lukas-reineke/indent-blankline.nvim", --Sexy indent lines
    "windwp/nvim-ts-autotag", --Auto tags for HTML
    "norcalli/nvim-colorizer.lua", --Visualize Hex/RGB/etc 
    "lewis6991/gitsigns.nvim", --Shows deletions/additions/modifications if in git repo
    "tpope/vim-fugitive", --Git command integration
    "xiyaowong/transparent.nvim", --Transparency Toggle
    "andweeb/presence.nvim", --Discord Rich Presence
    "numToStr/Comment.nvim", --Easy full line or selection commenting out
    {'akinsho/toggleterm.nvim', version = "*", config = true},
    {"folke/which-key.nvim", event = "VeryLazy"}, --Shows key combinations if youre dumb
    {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"}, --Parser for better highlighting, use :TSUpdate
    {"nvim-tree/nvim-tree.lua", dependencies = {"nvim-tree/nvim-web-devicons"} }, --File Browser, Devicons need a hack nerd font
    {"akinsho/bufferline.nvim", dependencies = {"nvim-tree/nvim-web-devicons"} }, --Tabs
    {"nvim-lualine/lualine.nvim", dependencies = {"nvim-tree/nvim-web-devicons"} }, --Sexy bar at the bottom
    {"nvim-telescope/telescope.nvim", dependencies = {"nvim-lua/plenary.nvim"} }, --Plenary needs g++ and gcc
    {'glepnir/dashboard-nvim', event = 'VimEnter',dependencies = { 'nvim-tree/nvim-web-devicons' } }, --Dope ass dashboard
    {
        'VonHeikemen/lsp-zero.nvim', --Temporary LSP Solution
        branch = 'v1.x',
        dependencies = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},         -- Required
            {'hrsh7th/cmp-nvim-lsp'},     -- Required
            {'hrsh7th/cmp-buffer'},       -- Optional
            {'hrsh7th/cmp-path'},         -- Optional
            {'saadparwaiz1/cmp_luasnip'}, -- Optional
            {'hrsh7th/cmp-nvim-lua'},     -- Optional

            -- Snippets
            {'L3MON4D3/LuaSnip'},             -- Required
            {'rafamadriz/friendly-snippets'}, -- Optional
        }
    },
}

local opts = {}
require("lazy").setup(plugins, opts)
