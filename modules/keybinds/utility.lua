require("modules.scripts.uwsm")

---@type Bind[]
UtilityBinds = {
	-- Color Picker
	{ "P", hl.dsp.exec_cmd("hyprpicker -a -f hex -n") },
	-- Screenshot/Record
	{ "CTRL + S", hl.dsp.exec_cmd("~/.bin/grimblast -n -f copy area") },
	{ "ALT + S", hl.dsp.exec_cmd('wf-recorder -g "$(slurp)" -f ~/Videos/' .. os.time() .. ".mp4") },
	{ "CTRL + ALT + S", hl.dsp.exec_cmd("killall -s SIGINT wf-recorder") },

	-- Notifications
	{ "N", hl.dsp.exec_cmd("swaync-client -t") },
	{ "SHIFT + N", hl.dsp.exec_cmd("swaync-client -d") },

	-- Locking, Shutting down, Restarting, Logging Outinimum window si
	{ "L", hl.dsp.exec_cmd("pidof hyprlock || hyprlock --grace 15") },
	{ "CTRL + L", hl.dsp.exec_cmd("hyprshutdown -t 'Shutting down...' --post-cmd 'shutdown -P 0'") },
	{ "SHIFT + L", hl.dsp.exec_cmd("hyprshutdown -t 'Restarting...' --post-cmd 'shutdown -r 0'") },
	{ "ALT + L", hl.dsp.exec_cmd("hyprshutdown -t 'Logging Out...' --post-cmd 'uwsm stop'") },

	-- Restart Waybar
	{ "SHIFT + R", hl.dsp.exec_cmd("~/.config/waybar/scripts/launch.sh") },
	-- Start/Stop Quickshell
	{ "CTRL + R", hl.dsp.exec_cmd("qs kill || uwsm app -- qs -d") },

	-- Laptop multimedia keys for volume and LCD brightness
	{
		"XF86AudioRaiseVolume",
		hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"),
		{ locked = true, repeating = true },
		useLeader = false,
	},
	{
		"XF86AudioLowerVolume",
		hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),
		{ locked = true, repeating = true },
		useLeader = false,
	},
	{
		"XF86AudioMute",
		hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
		{ locked = true, repeating = true },
		useLeader = false,
	},
	{
		"XF86AudioMicMute",
		hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),
		{ locked = true, repeating = true },
		useLeader = false,
	},

	-- Requires playerctl
	{ "XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true }, useLeader = false },
	{ "XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true }, useLeader = false },
	{ "XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true }, useLeader = false },
	{ "XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true }, useLeader = false },
}
