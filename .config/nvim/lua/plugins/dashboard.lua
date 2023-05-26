local status, plugin = pcall(require,'dashboard')
if not status then
    print('Error with plugin: ', plugin)
else
-- plugin.setup({
--     theme = 'hyper',
--     config = {
--         week_header = {
--             enable = true,
--         },
--         shortcut = {
--             { desc = '󰊳 Update', group = '@property', action = 'Lazy update', key = 'u' },
--             {
--                 icon = ' ',
--                 icon_hl = '@variable',
--                 desc = 'Files',
--                 group = 'Label',
--                 action = 'Telescope find_files',
--                 key = 'f',
--             },
--         },
--     },
-- })
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
        icon = ' ',
        icon_hl = 'Title',
        desc = 'Find File           ',
        desc_hl = 'String',
        key = 'f',
        keymap = 'SPC f',
        key_hl = 'Number',
        action = 'lua print(2)'
      },
      {
        icon = ' ',
        desc = 'File Browser',
        key = 'd',
        keymap = 'SPC d',
        action = 'lua print(3)'
      },
    },
    footer = {}  
  }
})
end

