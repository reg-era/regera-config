-- ~/.config/nvim/init.lua

-- Set leader key early (must be first!)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Load settings
require("settings")

-- Setup Lazy
vim.opt.rtp:prepend("~/.local/share/nvim/lazy/lazy.nvim")
require("lazy").setup("plugins")

-- Load keymaps after plugins
require("keymaps")

-- Plugin configs
require("config.lsp")
require("config.cmp")
require("nvim-web-devicons").setup()
require("nvim-tree").setup(require("config.nvim-tree"))

-- Open nvim-tree on directory open
local function open_nvim_tree(data)
  if vim.fn.isdirectory(data.file) == 1 then
    vim.cmd.cd(data.file)
    require("nvim-tree.api").tree.open()
  end
end

vim.api.nvim_create_autocmd("VimEnter", {
  callback = open_nvim_tree
})

