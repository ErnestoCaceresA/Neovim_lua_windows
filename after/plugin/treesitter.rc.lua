local status, ts = pcall(require, 'nvim-treesitter.configs')
if (not status) then return end

ts.setup {
  highlight = {
    enable = true,
    disable = {'lua'},
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    'tsx',
    'json',
    'lua',
    'css',
    'markdown', --para hover de lspsaga
    'markdown_inline' --para hover de lspsaga
  },
  autotag = {
    enable = true,
  }
}
