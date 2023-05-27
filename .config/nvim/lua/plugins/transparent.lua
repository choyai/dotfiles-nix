local status, plugin = pcall(require,'transparent')
if not status then
    print('Plugin Error: ', plugin)
else
plugin.setup({
  groups = { -- table: default groups
    'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
    'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
    'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
    'SignColumn', 'CursorLineNr', 'EndOfBuffer',
  },
  extra_groups = {
    "NormalFloat", -- plugins which have float panel such as Lazy, Mason, LspInfo
    "NvimTreeNormal" -- NvimTree
  }, -- table: additional groups that should be cleared
  exclude_groups = {}, -- table: groups you don't want to clear
})
vim.cmd(":TransparentEnable")
end
