require("modules.scripts.uwsm")

-- Color Picker
hl.bind(MainMod .. " + P", hl.dsp.exec_cmd("hyprpicker -a -f hex -n"))
-- Screenshot
hl.bind(MainMod .. " + CTRL + S", hl.dsp.exec_cmd("~/.bin/grimblast -n -f copy area"))
hl.bind(MainMod .. " + ALT + S", hl.dsp.exec_cmd('wf-recorder -g "$(slurp)" -f ~/Videos/' .. os.time() .. ".mp4"))
hl.bind(MainMod .. " + CTRL + ALT + S", hl.dsp.exec_cmd("killall -s SIGINT wf-recorder"))

-- Notifications
hl.bind(MainMod .. " + N", hl.dsp.exec_cmd("swaync-client -t"))
hl.bind(MainMod .. " + SHIFT + N", hl.dsp.exec_cmd("swaync-client -d"))

-- Locking, Shutting down, Restarting, Logging Outinimum window si
hl.bind(MainMod .. " + L", hl.dsp.exec_cmd("pidof hyprlock || hyprlock --grace 15"))
hl.bind(MainMod .. " + CTRL + L", hl.dsp.exec_cmd("hyprshutdown -t 'Shutting down...' --post-cmd 'shutdown -P 0'"))
hl.bind(MainMod .. " + SHIFT + L", hl.dsp.exec_cmd("hyprshutdown -t 'Restarting...' --post-cmd 'shutdown -r 0'"))
hl.bind(MainMod .. " + ALT + L", hl.dsp.exec_cmd("hyprshutdown -t 'Logging Out...' --post-cmd 'uwsm stop'"))

-- Restart Waybar
hl.bind(MainMod .. " + SHIFT + R", hl.dsp.exec_cmd("~/.config/waybar/scripts/launch.sh"))
-- Start/Stop Quickshell
hl.bind(MainMod .. " + CTRL + R", hl.dsp.exec_cmd("qs kill || uwsm app -- qs -d"))
-- hl.bind(MainMod .. " + CTRL + R", hl.dsp.exec_cmd("ags quit | ags run -d /home/trusty/.config/trustyshell/"))

-- Laptop multimedia keys for volume and LCD brightness
hl.bind(
	"XF86AudioRaiseVolume",
	hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioLowerVolume",
	hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioMute",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioMicMute",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),
	{ locked = true, repeating = true }
)
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), { locked = true, repeating = true })

-- Requires playerctl
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })
