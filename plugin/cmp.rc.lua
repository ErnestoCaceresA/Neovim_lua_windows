local status, cmp = pcall(require, "cmp")
if (not status) then return end

local lspkind = require 'lspkind'
local select_opts = {behavior = cmp.SelectBehavior.Select}

cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space'] = cmp.mapping.complete(),
    --['<C-j>'] = cmp.mapping.select_next_item(select_opts),
    ['<Tab>'] = cmp.mapping.select_next_item(select_opts),
    --['<C-k>'] = cmp.mapping.select_prev_item(select_opts),
    ['<S-Tab>'] = cmp.mapping.select_prev_item(select_opts),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Replace,
      select = true
    }),
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'buffer' }
  }),
  formatting = {
    format = lspkind.cmp_format({ wirth_text = false, maxwidth = 50 })
  }
})

vim.cmd [[
  set completeopt=menuone,noinsert,noselect
  highlight! default link CmpItemKind CmpItemMenuDefault
]]

-- Moverse hacia arriba en la lista de autocompletado de CMP
-- vim.api.nvim_set_keymap('i', '<C-k>', 'pumvisible() ? "<C-p>" : require("cmp").select_prev_item()', {expr = true})

-- Moverse hacia abajo en la lista de autocompletado de CMP
-- vim.api.nvim_set_keymap('i', '<C-j>', 'pumvisible() ? "<C-n>" : require("cmp").select_next_item()', {expr = true})

