vim.cmd('autocmd!')

vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

vim.wo.number = true

vim.opt.title = true
vim.opt.autoindent = true
vim.opt.hlsearch = true
vim.opt.backup = false
vim.opt.cmdheight = 1
vim.opt.expandtab = true
vim.opt.scrolloff = 10
-- vim.opt.shell = 'fish'
-- vim.opt.backupskip = '/tmp/*,/private/tmp/*'
vim.opt.inccommand = 'split'
vim.opt.ignorecase = true
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.ai = true --Auto indent
vim.opt.si = true --smart indent
vim.opt.wrap = false -- No wrap lines
vim.opt.backspace = 'start,eol,indent'
vim.opt.path:append {'**'} -- Finding files - Search down into subfolders
vim.opt.wildignore:append {'*/node_modules/*'}

-- Undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])
-- but this doesn't work on iTerm2


-- Turn off paste mode when leaving insert
--vim.api.nvim_create_autocmd("InsertLeave",{
--  pattern = '*',
--  command = "set nopase"
--})


-- Add astericks in block comments
vim.opt.formatoptions:append {'r'}

-- ========
-- MIOS
-- ========

--Activar pliegues
vim.wo.foldmethod = "indent" --por indentacion
vim.wo.foldlevel = 2 --nivel predeterminado de plegado en 2 
vim.api.nvim_set_keymap('n', '<Space>c', 'zR', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Space>d', 'za', { noremap = true, silent = true })
-- Guardar los valores de pliegue antes de cerrar el archivo
vim.api.nvim_command('autocmd BufWinLeave * let g:lastfoldmethod = &foldmethod | let g:lastfoldexpr = &foldexpr | let g:lastfoldcolumn = &foldcolumn | let g:lastfoldlevel = &foldlevel')
-- Restaurar los valores de pliegue al abrir el archivo
vim.api.nvim_command('autocmd BufWinEnter * if exists("g:lastfoldmethod") | let &l:foldmethod = g:lastfoldmethod | endif | if exists("g:lastfoldexpr") | let &l:foldexpr = g:lastfoldexpr | endif | if exists("g:lastfoldcolumn") | let &l:foldcolumn = g:lastfoldcolumn | endif | if exists("g:lastfoldlevel") | let &l:foldlevel = g:lastfoldlevel | endif')




vim.api.nvim_command('set relativenumber') --para numeros relativos
-- para modo insertar
vim.api.nvim_set_keymap('i', '<C-l>', '<right>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', '<C-b>', '<C-w>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', '<C-h>', '<left>', {noremap = true, silent = true})

-- MOVER BLOQUES DE CODIGO
vim.api.nvim_set_keymap('x', 'K', ":move '<-2<CR>gv-gv", {noremap = true, silent = true})
vim.api.nvim_set_keymap('x', 'J', ":move '>+1<CR>gv-gv", {noremap = true, silent = true})
vim.api.nvim_set_keymap('x', 'K', ":move '<-2<CR>gv-gv", {noremap = true, silent = true})
vim.api.nvim_set_keymap('x', 'J', ":move '>+1<CR>gv-gv", {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '<Space>w', ':w<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Space>q', ':q<CR>', {noremap = true, silent = true})

-- Indentacion
vim.g.indentLine_char = '▏'


-- movilidad
vim.api.nvim_set_keymap('n', '<Space>h', '0', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Space>l', '$', { noremap = true, silent = true })

-- Prettier
vim.api.nvim_set_keymap('n', '<Space>a', ':Prettier<CR>', { noremap = true, silent = true })

-- Cerrar buffers
vim.api.nvim_set_keymap('n', '<Space>bd', ':bdelete<CR>', { noremap = true, silent = true })




