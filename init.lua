require('base')
require('highlights')
require('maps')
require('plugins')

local has = function (x)
  return vim.fn.has(x) == 1
end

local is_mac = has "macunix"
local is_win = has "win32"

if is_mac then
  require('macos')
end

if is_win then
  require('windows')
end

-- NEOVIDE CONFIGURATION
--[[vim.g.neovide_remember_window_size = true
vim.g.neovide_cursor_vfx_mode = "railgun"
vim.g.neovide_transparency = 0.55
vim.o.guifont = "Hack:h11"
vim.g.neovide_cursor_vfx_particle_lifetime = 2.2
vim.g.neovide_cursor_vfx_particle_density = 9.0
vim.g.neovide_cursor_vfx_particle_speed = 10.0
vim.g.neovide_cursor_vfx_particle_curl = 1.1
vim.g.neovide_cursor_antialiasing = false]]


vim.g.neovide_refresh_rate = 60
vim.g.neovide_cursor_animation_length = 0.05
vim.g.neovide_cursor_trail_length = 0.05
vim.g.neovide_cursor_antialiasing = true
vim.g.neovide_cursor_vfx_mode = "railgun"
vim.g.neovide_transparency = 0.8
vim.g.neovide_remember_window_size = true

