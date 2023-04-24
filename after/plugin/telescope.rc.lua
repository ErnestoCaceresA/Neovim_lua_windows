local status, telescope = pcall(require, 'telescope')
if (not status) then return end

local actions = require('telescope.actions')

function telescope_buffer_dir()
  return vim.fn.expand('%:p:h')
end

local fb_actions = require 'telescope'.extensions.file_browser.actions

telescope.setup {
  defaults = {
    mappings = {
      n = {
        ['q'] = actions.close
      }
    }
  },
  extensions = {
    file_browser = {
      theme = 'dropdown',
      -- disables netrw add use telescope-file-browser in its place
      hijack_netrw = true,
      mappings = {
        -- your custom insert mode mappings
        ['i'] = {
          ['<C-w>'] = function() vim.cmd('normal vbd') end,
        },
        ['n'] = {
          ['N'] = fb_actions.create,
          ['h'] = fb_actions.goto_parent_dir,
          ['/'] = function()
          vim.cmd('startinsert')
          end
        }
      }
    }
  }
}


telescope.load_extension('file_browser')

-- AQUI SE PUEDEN CONFIGURAR LOS ATAJOS DE TECLA PARA TELESCOPE EN ESTE CASO ESTAN EN MODO NORMAL Y SON ;f , ;r, ... etc
local opts = { noremap = true, silent = true }
--vim.keymap.set('n', ';f', '<cmd>lua require("telescope.builtin").find_files({no_ignore = false, hidden = true})<cr>', opts)
--vim.keymap.set('n', ';f', '<cmd>lua require("telescope.builtin").find_files({no_ignore = false, hidden = true, file_ignore_patterns = {"node_modules/.*"}})<cr>', opts)
--configuracion para excluir del find_files los archivos de la carpeta node_modules
vim.keymap.set('n', ';f', '<cmd>lua require("telescope.builtin").find_files({no_ignore = false, hidden = true, file_ignore_patterns = {"node_modules/*"}})<cr>', opts)
vim.keymap.set('n', ';r', '<cmd>lua require("telescope.builtin").live_grep()<cr>', opts)
vim.keymap.set('n', ';b', '<cmd>lua require("telescope.builtin").buffers()<cr>', opts)
vim.keymap.set('n', ';t', '<cmd>lua require("telescope.builtin").help_tags()<cr>', opts)
vim.keymap.set('n', ';;', '<cmd>lua require("telescope.builtin").resume()<cr>', opts)
vim.keymap.set('n', ';e', '<cmd>lua require("telescope.builtin").diagnostics()<cr>', opts)
vim.keymap.set('n', ';of', '<cmd>lua require("telescope.builtin").oldfiles()<cr>', opts)
vim.keymap.set('n', ';m', '<cmd>lua require("telescope.builtin").marks()<cr>', opts)
vim.keymap.set('n', ';l', '<cmd>lua require("telescope.builtin").jumplist()<cr>', opts)
vim.keymap.set('n', ';y', '<cmd>lua require("telescope.builtin").registers()<cr>', opts)
vim.keymap.set('n', ';k', '<cmd>lua require("telescope.builtin").keymaps()<cr>', opts)
vim.keymap.set('n', ';re', '<cmd>lua require("telescope.builtin").lsp_references()<cr>', opts)
vim.keymap.set('n', '<Space>bl', '<cmd>lua require("telescope.builtin").current_buffer_fuzzy_find()<cr>', opts)
vim.keymap.set('n', 'sf', '<cmd>lua require("telescope").extensions.file_browser.file_browser({ path = "%:p:h", cwd = telescope_buffer_dir(), respect_git_ignore = false, hidden = true, grouped = true, previewer = false, initial_mode = "normal", layout_config = {height=40} })<cr>', opts)
vim.keymap.set('n', ';gd', '<cmd>lua require("telescope.builtin").lsp_definitions()<cr>', opts)
vim.keymap.set('n', ';a', '<cmd>lua require("telescope.builtin").builtin()<cr>', opts) --todas las funciones

--vim.api.nvim_set_keymap('n', '<Space>bl', '<cmd>lua require("telescope.builtin").find_files()<cr>', {})
