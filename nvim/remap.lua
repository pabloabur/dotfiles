-- git mergetool
vim.keymap.set('n', '<leader>gh', ':diffget LOCAL')
vim.keymap.set('n', '<leader>gl', ':diffget REMOTE')

vim.keymap.set('n', '<C-t>', ':tabnew<CR>')
vim.keymap.set('n', '<leader>a', ':diffget //2<CR>')
vim.keymap.set('n', '<leader>f', ':diffget //3<CR>')

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
