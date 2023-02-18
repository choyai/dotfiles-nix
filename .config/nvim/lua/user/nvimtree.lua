-- OR setup with some options
local status, plugin = pcall(require,'nvim-tree')
if not status then
    print('Plugin Error: ', plugin)
else


local function open_nvim_tree(data)

  -- buffer is a [No Name]
  local no_name = data.file == "" and vim.bo[data.buf].buftype == ""

  -- buffer is a directory
  local directory = vim.fn.isdirectory(data.file) == 1

  if not no_name and not directory then
    return
  end

  -- change to the directory
  if directory then
    vim.cmd.cd(data.file)
  end

  -- open the tree
  require("nvim-tree.api").tree.open()
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })

plugin.setup({
    sort_by = "case_sensitive",
    view = {
        adaptive_size = true,
        preserve_window_proportions = true,
        width = {
            min = 20,
            max = 30,
        },
       mappings = {
           list = {
               { key = "u", action = "dir_up" },
               { key = "<Tab>", action = "cd" },
           },
       },
    },
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = false,
    },
})

end
