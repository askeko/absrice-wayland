-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- This is where you actually apply your config choices
config.color_scheme = "tokyonight_storm"
config.font = wezterm.font("FiraCode Nerd Font Mono", {
	weight = "Regular",
	italic = true,
	stretch = "Normal",
	style = "Normal",
})
config.font = wezterm.font_with_fallback({
	"FiraCode Nerd Font Mono",
	"JetBrains Mono",
})
config.hide_tab_bar_if_only_one_tab = true
config.window_padding = {
	left = 25,
	right = 25,
	top = 25,
	bottom = 25,
}
config.window_background_opacity = 0.85

-- and finally, return the configuration to wezterm
return config
