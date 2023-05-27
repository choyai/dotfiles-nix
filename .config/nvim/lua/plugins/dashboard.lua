local status, plugin = pcall(require,'dashboard')
if not status then
    print('Error with plugin: ', plugin)
else

function edit_nvim()
    vim.cmd(":e $MYVIMRC")
    vim.cmd(":cd ~/.config/nvim")
    vim.cmd(":NvimTreeOpen")
end

local randomquote = {
    "Bing Chilling",
    "https://justincode.us",
    "The Stink Boys",
    "Whopper Whopper Whopper Whopper Junior Double Triple Whopper",
    "White Monster",
    "The system plays us everday...",
    "sudo systemctl restart justinlime",
    "sudo systemctl start justinlime",
    "sudo systemctl stop justinlime",
    "sudo systemctl enable justinlime",
    "sudo systemctl disable justinlime",
}

plugin.setup({
  theme = 'doom',
  config = {
    header = {
    [[  ⠀                                                 ]],
    [[ ⠀⠀            ⣞⢽⢪⢣⢣⢣⢫⡺⡵⣝⡮⣗⢷⢽⢽⢽⣮⡷⡽⣜⣜⢮⢺⣜⢷⢽⢝⡽⣝        ]],
    [[  ⠀           ⠸⡸⠜⠕⠕⠁⢁⢇⢏⢽⢺⣪⡳⡝⣎⣏⢯⢞⡿⣟⣷⣳⢯⡷⣽⢽⢯⣳⣫⠇        ]],
    [[ ⠀⠀            ⠀⢀⢀⢄⢬⢪⡪⡎⣆⡈⠚⠜⠕⠇⠗⠝⢕⢯⢫⣞⣯⣿⣻⡽⣏⢗⣗⠏        ⠀]],
    [[ ⠀      ⠀      ⠪⡪⡪⣪⢪⢺⢸⢢⢓⢆⢤⢀⠀⠀⠀⠀⠈⢊⢞⡾⣿⡯⣏⢮⠷⠁⠀        ⠀ ]],
    [[ ⠀         ⠀   ⠀⠀⠈⠊⠆⡃⠕⢕⢇⢇⢇⢇⢇⢏⢎⢎⢆⢄⠀⢑⣽⣿⢝⠲⠉⠀⠀⠀        ⠀]],
    [[ ⠀          ⠀⠀⠀  ⠀⠀⡿⠂⠠⠀⡇⢇⠕⢈⣀⠀⠁⠡⠣⡣⡫⣂⣿⠯⢪⠰⠂⠀⠀⠀⠀        ]],
    [[ ⠀⠀            ⠀⠀⠀⡦⡙⡂⢀⢤⢣⠣⡈⣾⡃⠠⠄⠀⡄⢱⣌⣶⢏⢊⠂⠀⠀⠀⠀⠀⠀        ]],
    [[ ⠀  ⠀          ⠀⠀⠀⢝⡲⣜⡮⡏⢎⢌⢂⠙⠢⠐⢀⢘⢵⣽⣿⡿⠁⠁⠀⠀⠀⠀⠀⠀        ⠀]],
    [[ ⠀   ⠀         ⠀⠀⠀⠨⣺⡺⡕⡕⡱⡑⡆⡕⡅⡕⡜⡼⢽⡻⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀        ]],
    [[ ⠀   ⠀         ⠀⠀⠀⣼⣳⣫⣾⣵⣗⡵⡱⡡⢣⢑⢕⢜⢕⡝⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀        ]],
    [[ ⠀    ⠀        ⠀⠀⣴⣿⣾⣿⣿⣿⡿⡽⡑⢌⠪⡢⡣⣣⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀        ]],
    [[ ⠀     ⠀       ⠀⠀⡟⡾⣿⢿⢿⢵⣽⣾⣼⣘⢸⢸⣞⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀        ]],
    [[ ⠀    ⠀        ⠀⠀⠀⠁⠇⠡⠩⡫⢿⣝⡻⡮⣒⢽⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀        ]],
    [[  ⠀    _   _                     _            ___     ]], 
    [[  ⠀   | \ | |                   (_)          |__ \    ]],
    [[  ⠀   |  \| |  ___   ___ __   __ _  _ __ ___    ) |   ]],
    [[  ⠀   | . ` | / _ \ / _ \\ \ / /| || '_ ` _ \  / /    ]],
    [[  ⠀   | |\  ||  __/| (_) |\ V / | || | | | | ||_|     ]],
    [[  ⠀   |_| \_| \___| \___/  \_/  |_||_| |_| |_|(_)     ]],
    [[  ⠀                                                   ]],
    [[______________________________________________________]],
    [[  ⠀                                                   ]],
    [[  ⠀                                                   ]],
    }, 
    center = {
      {
        icon = ' ',
        icon_hl = '@variable',
        desc = 'Find File           ',
        desc_hl = 'String',
        key = 'f',
        keymap = 'SPC f',
        key_hl = 'Number',
        action = 'Telescope find_files'
      },
      {
        icon = ' ',
        icon_hl = '@variable',
        desc = 'File Browser',
        desc_hl = 'String',
        key = 'd',
        keymap = 'SPC d',
        key_hl = 'Number',
        action = 'NvimTreeToggle'
      },
     -- {
     --    icon = ' ',
     --    icon_hl = '@variable',
     --    desc = 'Next Tab',
     --    desc_hl = 'String',
     --    key = ' ',
     --    keymap = 'SPC l',
     --    key_hl = 'Number',
     --    action = 'BufferLineCycleNext'
     --  },
     --  {
     --    icon = ' ',
     --    icon_hl = '@variable',
     --    desc = 'Previous Tab',
     --    desc_hl = 'String',
     --    key = ' ',
     --    keymap = 'SPC h',
     --    key_hl = 'Number',
     --    action = 'BufferLineCyclePrev'
     --  },
     --  {
     --    icon = '󰗼 ',
     --    icon_hl = '@variable',
     --    desc = 'Kill Current Tab',
     --    desc_hl = 'String',
     --    key = ' ',
     --    keymap = 'SPC q',
     --    key_hl = 'Number',
     --    action = 'BufferLineCycleNext'
     --  },
      {
        icon = '󱃖 ',
        icon_hl = '@variable',
        desc = 'LSP Installer',
        desc_hl = 'String',
        key = 'm',
        keymap = ':Mason',
        key_hl = 'Number',
        action = 'Mason'
      },
      {
        icon = '󰚰 ',
        icon_hl = '@variable',
        desc = 'Update',
        desc_hl = 'String',
        key = 'u',
        keymap = ':Lazy',
        key_hl = 'Number',
        action = 'Lazy'
      },
      {
        icon = '󱓥 ',
        icon_hl = '@variable',
        desc = 'Edit Neovim',
        desc_hl = 'String',
        key = 'e',
        keymap = ' ',
        key_hl = 'Number',
        action = 'lua edit_nvim()'
      },

    },
    footer = {
        randomquote[math.random(1,#randomquote)] 
    }  
  }
})
end

