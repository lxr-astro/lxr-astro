-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
config.automatically_reload_config = false


-- 25-02-14 brew install tmux
-- config.default_prog = {"/opt/homebrew/bin/tmux"} -- mini, tmux in brew
config.default_prog = {"/usr/local/bin/tmux"} -- old imac, air, tmux in /usr

-- background and color
config.hide_tab_bar_if_only_one_tab = true
config.window_decorations = "RESIZE"

config.window_background_opacity = 0.8
config.macos_window_background_blur = 20

config.colors = {
  background = "#000a1c", -- deepblue
}


-- 25-02-07 window size
--config.font = wezterm.font("JetBrains Mono")
-- config.font_size = 14.0 -- mini
config.font_size = 18.0 -- air
config.initial_cols = 100 
config.initial_rows = 30 
-- changing the color scheme:
config.color_scheme = "AdventureTime"

-- and finally, return the configuration to wezterm
return config
