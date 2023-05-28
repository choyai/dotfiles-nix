local status, plugin = pcall(require,'dashboard')
if not status then
    print('Error with plugin: ', plugin)
else

plugin.setup({
  theme = 'doom',
  config = {
    header = randomsplash(),
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
        icon = ' ',
        icon_hl = '@variable',
        desc = 'Transparency',
        desc_hl = 'String',
        key = 't',
        keymap = ':TransparentToggle',
        key_hl = 'Number',
        action = 'TransparentToggle'
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
        randomquote()
    }  
  }
})
end

