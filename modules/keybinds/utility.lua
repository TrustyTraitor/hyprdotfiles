require("modules.scripts.uwsm")
local constants = require("modules.systems.constants")

---@type Bind[]
UtilityBinds = {
	-- Color Picker
	{ "P", constants.applications.utility.screen.colorpick },
	-- Screenshot/Record
	{ "CTRL + S", constants.applications.utility.screen.screenshot },
	{ "ALT + S", constants.applications.utility.screen.screen_record },
	{ "CTRL + ALT + S", constants.applications.utility.screen.stop_screen_record },

	-- Notifications
	{ "N", constants.system.notifications.open },
	{ "SHIFT + N", constants.system.notifications.do_not_disturb },

	-- Locking, Shutting down, Restarting, Logging Outinimum window si
	{ "L", constants.system.power.lock },
	{ "CTRL + L", constants.system.power.shutdown },
	{ "SHIFT + L", constants.system.power.restart },
	{ "ALT + L", constants.system.power.logout },

	-- Restart Waybar
	{ "SHIFT + R", constants.system.shell.waybar.restart },
	-- Start/Stop Quickshell
	{ "CTRL + R", constants.system.shell.quickshell.restart },

	-- Laptop multimedia keys for volume and LCD brightness
	{
		"XF86AudioRaiseVolume",
		constants.system.audio.speakers.increase,
		{ locked = true, repeating = true },
		useLeader = false,
	},
	{
		"XF86AudioLowerVolume",
		constants.system.audio.speakers.decrease,
		{ locked = true, repeating = true },
		useLeader = false,
	},
	{
		"XF86AudioMute",
		constants.system.audio.speakers.mute,
		{ locked = true, repeating = true },
		useLeader = false,
	},
	{
		"XF86AudioMicMute",
		constants.system.audio.mic.toggle_mute,
		{ locked = true, repeating = true },
		useLeader = false,
	},

	-- Requires playerctl
	{ "XF86AudioNext", constants.system.audio.player.next, { locked = true }, useLeader = false },
	{ "XF86AudioPause", constants.system.audio.player.pause, { locked = true }, useLeader = false },
	{ "XF86AudioPlay", constants.system.audio.player.play, { locked = true }, useLeader = false },
	{ "XF86AudioPrev", constants.system.audio.player.previous, { locked = true }, useLeader = false },
}
