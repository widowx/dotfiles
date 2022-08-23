local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = ' '

map('n', '<leader>e', ':NvimTreeToggle<CR>', opts)
-- Keymaps for dashboard --
map('n', '<leader>q', ':q<CR>', opts)
map('n', '<leader>n', ':DashboardNewFile<CR>', opts)
map('n', '<leader>p', ':PackerSync<CR>', opts)
map('n', '<leader>c', ':e ~/.config/nvim/lua/core/init.lua<CR>', opts)
map('n', '<leader>f', ':browse oldfiles<CR>', opts)
