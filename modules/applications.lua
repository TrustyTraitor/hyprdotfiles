hl.on("hyprland.start", function()
	-- hl.exec_cmd("hyprpaper") -- systemd user unit got this now
	-- hl.exec_cmd("waybar")
	-- hl.exec_cmd("swaync")
	-- hl.exec_cmd("hypridle")
	hl.exec_cmd("uwsm app -- easyeffects -w")
end)

Terminal = "kitty"
FileManager = "yazi"
Menu = "rofi -show combi -run-command 'uwsm app -- {cmd}'"
Browser = "firefox"
