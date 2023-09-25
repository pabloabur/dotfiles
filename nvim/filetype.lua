vim.api.nvim_command('autocmd BufEnter *.wiki lcd ~/Dropbox/vimwiki')
vim.api.nvim_command('autocmd BufLeave *.wiki lcd -')
