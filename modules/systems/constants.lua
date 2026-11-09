local constants = {
	applications = {
		core = {
			terminal = Launch(Terminal),
			browser = Launch(Browser),
			file_manager = Launch(Terminal .. " fish -c " .. FileManager),
			menu = Launch(Menu),
		},
		social = {
			discord = {
				push_to_talk = hl.dsp.global("discord:discord-push-to-talk"),
			},
		},
		utility = {
			screen = {
				screenshot = hl.dsp.exec_cmd("~/.bin/grimblast -n -f copy area"),
				screen_record = hl.dsp.exec_cmd('wf-recorder -g "$(slurp)" -f ~/Videos/' .. os.time() .. ".mp4"),
				stop_screen_record = hl.dsp.exec_cmd("killall -s SIGINT wf-recorder"),
				colorpick = hl.dsp.exec_cmd("hyprpicker -a -f hex -n"),
			},
		},
	},
	system = {
		shell = {
			waybar = {
				restart = hl.dsp.exec_cmd("systemctl --user restart waybar"),
			},
			quickshell = {
				restart = hl.dsp.exec_cmd("qs kill || uwsm app -- qs -d"),
			},
		},
		workspaces = {},
		window = {
			close = hl.dsp.window.close(),
			fullscreen = hl.dsp.window.fullscreen({ action = "toggle" }),
			float = hl.dsp.window.float({ action = "toggle" }),
			togglesplit = hl.dsp.layout("togglesplit"),
			focus = {
				left = hl.dsp.focus({ direction = "left" }),
				right = hl.dsp.focus({ direction = "right" }),
				up = hl.dsp.focus({ direction = "up" }),
				down = hl.dsp.focus({ direction = "down" }),
				scrolling = {
					right = ScrollingBind("focus r", "mouse_down"),
					left = ScrollingBind("focus l", "mouse_up"),
				},
			},
			move = {
				left = hl.dsp.window.move({ direction = "left" }),
				right = hl.dsp.window.move({ direction = "right" }),
				up = hl.dsp.window.move({ direction = "up" }),
				down = hl.dsp.window.move({ direction = "down" }),
				mouse = hl.dsp.window.drag(),
			},
			resize = {
				mouse = hl.dsp.window.resize(),
			},
		},
		notifications = {
			open = hl.dsp.exec_cmd("swaync-client -t"),
			do_not_disturb = hl.dsp.exec_cmd("swaync-client -d"),
		},
		audio = {
			speakers = {
				increase = hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"),
				decrease = hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),
				mute = hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
			},
			mic = {
				toggle_mute = hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),
			},
			player = {
				next = hl.dsp.exec_cmd("playerctl next"),
				previous = hl.dsp.exec_cmd("playerctl previous"),
				play = hl.dsp.exec_cmd("playerctl play-pause"),
				pause = hl.dsp.exec_cmd("playerctl play-pause"),
			},
		},
		power = {
			shutdown = hl.dsp.exec_cmd("hyprshutdown -t 'Shutting down...' --post-cmd 'shutdown -P 0'"),
			restart = hl.dsp.exec_cmd("hyprshutdown -t 'Restarting...' --post-cmd 'shutdown -r 0'"),
			logout = hl.dsp.exec_cmd("hyprshutdown -t 'Logging Out...' --post-cmd 'uwsm stop'"),
			lock = hl.dsp.exec_cmd("pidof hyprlock || hyprlock --grace 15"),
		},
	},
}

return constants
