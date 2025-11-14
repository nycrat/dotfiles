-- Pull in the wezterm API
local wezterm = require "wezterm"

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.

-- For example, changing the initial geometry for new windows:
-- config.initial_cols = 120
-- config.initial_rows = 28

config.background = {
  {
    source = {
      File = "/home/avah/Downloads/cinnamoroll_and_milk.jpg"
    },
    width = "100%"
  },
}

config.enable_tab_bar = false

-- or, changing the font size and color scheme.
config.font = wezterm.font "Iosevka"
config.font_size = 16
config.color_scheme_dirs = { "~/.config/wezterm/colors" }
config.color_scheme = "Dawnfox"

-- config.disable_default_key_bindings = true

-- Finally, return the configuration to wezterm:
return config
