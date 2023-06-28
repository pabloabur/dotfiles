require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },
  indent = {
    enable = true,
  },
}

vim.g.vimwiki_list = {
{path = '~/Dropbox/vimwiki/professional/',
    template_path = '~/Dropbox/vimwiki/templates/',
    template_default = 'default',
    template_ext = '.html'},
{path = '~/Dropbox/vimwiki/system/'},
{path = '~/Dropbox/vimwiki/personal/'},
{path = '~/Dropbox/vimwiki/notes/',
    template_path = '~/Dropbox/vimwiki/templates/',
    template_default = 'default',
    template_ext = '.html'},
}

require('mini.surround').setup()

require('mini.completion').setup{
    mappings = {
        force_twostep = '',
        force_fallback = '',
    }}

require'lspconfig'.pyright.setup{}
require'lspconfig'.texlab.setup{}

vim.g.mapleader = " "
vim.cmd('colorscheme rose-pine')

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>f', builtin.find_files, {})
vim.keymap.set('n', '<leader>g', builtin.live_grep, {})
vim.keymap.set('n', '<leader>b', builtin.buffers, {})

-- git mergetool
vim.keymap.set('n', '<leader>gh', ':diffget LOCAL')
vim.keymap.set('n', '<leader>gl', ':diffget REMOTE')

vim.keymap.set('n', '<C-t>', ':tabnew<CR>')

-- Show 80 character limit
vim.keymap.set('n', '<F2>', ':let &cc = &cc == \'\' ? \'80\' : \'\'<CR>')

-- Clean highlight search
vim.keymap.set('n', '<F12>', ':nohlsearch<CR>')

-- Remove empty spaces
vim.keymap.set('n', '<F10>', ':%s/\\s\\+$//<CR>')

-- Open netrw
vim.keymap.set('n', '<leader>n', ':30vs.<CR>')

vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)

-- Replace all. Particularly useful after searching for a pattern
vim.keymap.set('n', '<leader>s', ':%s///gc<left><left><left>')
vim.keymap.set('x', '<leader>s', ':s///gc<left><left><left>')

-- Escape terminal
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')

--Paste without losing value in register
vim.keymap.set('v', 'p', '\"_dP')
vim.keymap.set({'n', 'v', 't'}, '<leader>y', '\"+y')
vim.keymap.set({'n', 'v', 't'}, '<leader>p', '\"+p')

vim.keymap.set('i', '(', '()<left>')
vim.keymap.set('i', '[', '[]<left>')
vim.keymap.set('i', '{', '{}<left>')
vim.keymap.set('i', '\"', '\"\"<left>')
vim.keymap.set('i', '\'', '\'\'<left>')
vim.keymap.set('i', '$', '$$<left>')
vim.keymap.set('i', '<C-space>', '<right>')
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

vim.g.qs_highlight_on_keys = {'f', 'F', 't', 'T'}
