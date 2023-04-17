vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.ruler = true -- Display cursor position
-- Highlight current line and appearances
vim.opt.cursorline = true

vim.opt.shiftwidth = 4 -- Number to insert/remove for indentation commands on normal
vim.opt.softtabstop = 4 -- Number of spaces in tab when editing
vim.opt.tabstop = 4 -- Number of visual spaces per TAB read on file
vim.opt.expandtab = true -- Turns tabs into spaces

vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.ignorecase = true -- Use case insensitive search
vim.opt.smartcase = true -- Except when using capital letters

-- Allows undo after switching buffers (remember to create undodir)
vim.opt.undofile = true
vim.opt.undodir = os.getenv("HOME") .. '/.vim/undo'
vim.opt.undolevels = 1000
vim.opt.undoreload = 10000
vim.opt.swapfile = false
vim.opt.backup = false

vim.g.mapleader = "\\"

vim.g.qs_highlight_on_keys = {'f', 'F', 't', 'T'}
