local wezterm = require 'wezterm'

-- This will hold the configuration
local config = wezterm.config_builder()

-- Set font size
config.font_size = 12

-- Set color scheme (e.g., 'Catppuccin Mocha', 'Tokyo Night', or 'Dracula')
config.color_scheme = 'Catppuccin Mocha'

-- Make the tab bar look cleaner (optional)
config.use_fancy_tab_bar = false

-- Hide the native window title bar for a sleeker look
config.window_decorations = 'RESIZE'

config.keys = {
  {
    key = 'Enter',
    mods = 'ALT',
    action = wezterm.action.DisableDefaultAssignment,
  },
}

-- Finally, return the configuration to WezTerm
return config
