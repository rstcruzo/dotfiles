local wezterm = require("wezterm")
local act = wezterm.action

local config = {
	color_scheme = "tokyonight_night",
	font = wezterm.font({
		family = "JetbrainsMono Nerd Font",
		weight = "Medium",
	}),
	font_size = 13.0,
	line_height = 1.2,
	window_frame = {
		font = wezterm.font({ family = "JetbrainsMono Nerd Font" }),
	},
	window_decorations = "RESIZE",
	window_padding = {
		bottom = 0,
		top = 15,
	},
	use_fancy_tab_bar = true,
	enable_tab_bar = false,
	hide_tab_bar_if_only_one_tab = true,
	disable_default_key_bindings = true,
	keys = {
		{ key = "Enter", mods = "ALT", action = act.DisableDefaultAssignment }, -- no full screen
		{ key = "P", mods = "CMD", action = act.ActivateCommandPalette },
		{
			key = "c",
			mods = "CMD",
			action = act.CopyTo("ClipboardAndPrimarySelection"),
		},
		{
			key = "v",
			mods = "CMD",
			action = act.PasteFrom("Clipboard"),
		},
		-- tmux shortcut bindings
		-- new window
		{
			key = "t",
			mods = "CMD",
			action = act.Multiple({
				act.SendKey({ key = "b", mods = "CTRL" }),
				act.SendKey({ key = "c" }),
			}),
		},
		-- close window
		{
			key = "w",
			mods = "CMD",
			action = act.Multiple({
				act.SendKey({ key = "b", mods = "CTRL" }),
				act.SendKey({ key = "&" }),
			}),
		},
		-- split vertically
		{
			key = "X",
			mods = "CMD",
			action = act.Multiple({
				act.SendKey({ key = "b", mods = "CTRL" }),
				act.SendKey({ key = '"' }),
			}),
		},
		-- split horizontally
		{
			key = "V",
			mods = "CMD",
			action = act.Multiple({
				act.SendKey({ key = "b", mods = "CTRL" }),
				act.SendKey({ key = "%" }),
			}),
		},
		-- close plane
		{
			key = "d",
			mods = "CMD",
			action = act.Multiple({
				act.SendKey({ key = "b", mods = "CTRL" }),
				act.SendKey({ key = "x" }),
			}),
		},
		-- pane zoom
		{
			key = "m",
			mods = "CMD",
			action = act.Multiple({
				act.SendKey({ key = "b", mods = "CTRL" }),
				act.SendKey({ key = "z" }),
			}),
		},
		-- pane resizing
		{
			key = "K",
			mods = "CMD",
			action = act.Multiple({
				act.SendKey({ key = "b", mods = "CTRL" }),
				act.SendKey({ key = "UpArrow", mods = "CTRL" }),
			}),
		},
		{
			key = "J",
			mods = "CMD",
			action = act.Multiple({
				act.SendKey({ key = "b", mods = "CTRL" }),
				act.SendKey({ key = "DownArrow", mods = "CTRL" }),
			}),
		},
		{
			key = "L",
			mods = "CMD",
			action = act.Multiple({
				act.SendKey({ key = "b", mods = "CTRL" }),
				act.SendKey({ key = "RightArrow", mods = "CTRL" }),
			}),
		},
		{
			key = "H",
			mods = "CMD",
			action = act.Multiple({
				act.SendKey({ key = "b", mods = "CTRL" }),
				act.SendKey({ key = "LeftArrow", mods = "CTRL" }),
			}),
		},
		-- session switcher
		{
			key = "s",
			mods = "CMD",
			action = act.Multiple({
				act.SendKey({ key = "b", mods = "CTRL" }),
				act.SendKey({ key = "S" }),
			}),
		},
		-- last session switch
		{
			key = "S",
			mods = "CMD",
			action = act.Multiple({
				act.SendKey({ key = "b", mods = "CTRL" }),
				act.SendKey({ key = "l" }),
			}),
		},
		-- window cycling
		{
			key = "l",
			mods = "CMD",
			action = act.Multiple({
				act.SendKey({ key = "b", mods = "CTRL" }),
				act.SendKey({ key = "n" }),
			}),
		},
		{
			key = "h",
			mods = "CMD",
			action = act.Multiple({
				act.SendKey({ key = "b", mods = "CTRL" }),
				act.SendKey({ key = "p" }),
			}),
		},
	},
	front_end = "WebGpu",
	window_background_opacity = 0.85,
	macos_window_background_blur = 0,
}

local function add_tmux_windows_bindings()
	for i = 0, 9 do
		local str_i = tostring(i)
		local binding = {
			key = str_i,
			mods = "CMD",
			action = act.Multiple({
				act.SendKey({ key = "b", mods = "CTRL" }),
				act.SendKey({ key = str_i }),
			}),
		}
		table.insert(config.keys, binding)
	end
end

add_tmux_windows_bindings()

return config
