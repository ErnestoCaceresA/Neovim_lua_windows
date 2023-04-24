--[[local status, saga = pcall(require, 'lspsaga')
if (not status) then
  print("lspsaga not installed")
  return
end

saga.setup {}

saga.init_lsp_saga {
  server_filetype_map = {}
} ]]

--[[require("lspsaga").setup({
  preview = {
    lines_above = 0,
    lines_below = 10,
  },
  scroll_preview = {
    scroll_down = "<C-f>",
    scroll_up = "<C-b>",
  },
  request_timeout = 2000,

  -- See Customizing Lspsaga's Appearance
  ui = { ... },

  -- For default options for each command, see below
  finder = { ... },
  code_action = { ... }
  -- etc.
})]]

require('lspsaga').setup({
  -- Configuración del plugin aquí
})


local opts = {noremap = true, silent = true}
vim.keymap.set('n', '<C-j>', '<Cmd>Lspsaga diagnostic_jump_next<cr>', opts) --ver diagnostico de los errores o advertencias del codigo
vim.keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<cr>', opts) -- hover de elemento bajo cursor toda la info
vim.keymap.set('n', 'gD', '<Cmd>Lspsaga lsp_finder<cr>', opts) --muestra todos los archivos que usa la palabra bajo el cursor y tambien la definicion
vim.keymap.set('n', 'gd', '<Cmd>Lspsaga goto_definition<cr>', opts) -- va directamente a la definicion go to definition
vim.keymap.set('i', '<C-k>', '<Cmd>Lspsaga signature_help<cr>', opts)
--vim.keymap.set('n', 'gp', '<Cmd>Lspsaga peek_definition<cr>', opts)
vim.keymap.set('n', 'gr', '<Cmd>Lspsaga rename ++project<cr>', opts) -- renombrar una variable solo en el mismo archivo
