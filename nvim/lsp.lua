local lsp = require("lsp-zero")

lsp.preset("recommended")

-- lsp.configure('lua-language-server', {
--     settings = {
--         Lua = {
--             diagnostics = {
--                 globals = { 'vim' }
--             }
--         }
--     }
-- })


local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
  mapping = {
    ['<C-f>'] = cmp_action.luasnip_jump_forward(),
    ['<C-b>'] = cmp_action.luasnip_jump_backward(),
  },
  sources = {
    {name = 'buffer'},
    {name = 'nvim_lsp'},
    {name = 'luasnip'},
  }
})
-- local cmp_select = {behavior = cmp.SelectBehavior.Select}
-- local cmp_mappings = lsp.defaults.cmp_mappings({
--     ['<C-f>'] = cmp_action.luasnip_jump_forward(),
--     ['<C-b>'] = cmp_action.luasnip_jump_backward(),
-- })

-- lsp.setup_nvim_cmp({
--   mapping = cmp_mappings
-- })

lsp.on_attach(function(client, bufnr)
  local opts = {buffer = bufnr, remap = false}

  -- vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  -- vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
  -- vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
  -- vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
  -- vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
  -- vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
  -- vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
  -- vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
  -- vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
  -- vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

lsp.setup()
