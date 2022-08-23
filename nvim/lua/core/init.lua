local set = vim.opt

set.relativenumber = true
set.number = true
set.termguicolors = true
set.cursorline = true

set.expandtab = true
set.smarttab = true
set.shiftwidth = 4
set.tabstop = 4 

set.hlsearch = false
set.incsearch = true
set.ignorecase = true
set.smartcase = true

set.splitbelow = true
set.splitright = true
set.wrap = false
set.scrolloff = 5
set.sidescrolloff = 6

set.fileencoding = 'utf-8'
set.encoding = 'utf-8'
set.showmode = false
set.startofline = false

set.hidden = true
set.backup = false
set.writebackup = false
set.swapfile = false

set.cmdheight = 2
set.laststatus = 3
set.clipboard = 'unnamedplus'
set.conceallevel = 0

set.autoindent = true
set.smartindent = true
set.wildmenu = true
set.showcmd = false

set.undofile = true
set.updatetime = 300
set.history = 50
set.timeoutlen = 500

set.timeout = true
set.infercase = true
set.magic = true
set.errorbells = true
set.visualbell = true
set.fileformats = 'unix'

vim.cmd('colorscheme tokyonight')
vim.cmd('set background=dark')
--vim.cmd[[set guicursor=i:block]]   -- sets gui cursor in insert mode
vim.cmd[[set path=**]]    -- looks for files in folders and sub folders 
