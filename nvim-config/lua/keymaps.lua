-- ~/.config/nvim/lua/keymaps.lua

local keymap = vim.keymap.set
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
keymap("n", "<leader>ff", ":Telescope find_files<CR>", { desc = "Find files" })

-- moving lines
keymap("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move line down"}) 
keymap("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move line up"})

-- Git integreation keys
local gs = require("gitsigns")

vim.keymap.set("n", "]c", function() gs.next_hunk() end, { desc = "Next Git hunk" })
vim.keymap.set("n", "[c", function() gs.prev_hunk() end, { desc = "Previous Git hunk" })
vim.keymap.set("n", "<leader>hs", function() gs.stage_hunk() end, { desc = "Stage hunk" })
vim.keymap.set("n", "<leader>hr", function() gs.reset_hunk() end, { desc = "Reset hunk" })
vim.keymap.set("n", "<leader>hb", function() gs.blame_line() end, { desc = "Git blame line" })

