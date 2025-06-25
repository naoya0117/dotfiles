-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()
config.automatically_reload_config = true

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
-- config.color_scheme = "Material (base16)"
config.color_scheme = "Molokai (Gogh)"

config.font_size = 16.0

config.use_ime = true

config.window_decorations = "RESIZE"

config.keys = {
	-- Command + D で水平分割
	{
		key = "d",
		mods = "CMD",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},

	-- Command + [ で左のウィンドウにフォーカス
	{
		key = "[",
		mods = "CMD",
		action = wezterm.action.ActivatePaneDirection("Left"),
	},

	-- Command + ] で右のウィンドウにフォーカス
	{
		key = "]",
		mods = "CMD",
		action = wezterm.action.ActivatePaneDirection("Right"),
	},
}

return config
