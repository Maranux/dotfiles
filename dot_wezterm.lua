local wezterm = require 'wezterm'
local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.default_prog = { 'nu' }

config.font = wezterm.font('CaskaydiaCove Nerd Font Mono')

config.font_size = 12

config.color_scheme = 'rose-pine'


config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"

config.use_fancy_tab_bar = false

return config