local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  lsp_zero.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
  -- ensure_installed = {'tsserver', 'rust_analyzer'},
  handlers = {
    lsp_zero.default_setup,
    lua_ls = function()
      local lua_opts = lsp_zero.nvim_lua_ls()
      require('lspconfig').lua_ls.setup(lua_opts)
    end,
  },
})

-- nvim-cmp completion engine
local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
  -- preselects first item in completion menu
  preselect = 'item',
  completion = {
    completeopt = 'menu,menuone,noinsert'
  },

  -- makes tab key select autocomplete choice
  mapping = {
    ['<Tab>'] = cmp.mapping.confirm { select = true },
  }
})

