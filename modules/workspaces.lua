local suppressMaximizeRule = hl.window_rule({
	-- Ignore maximize requests from all apps. You'll probably like this.
	name = "suppress-maximize-events",
	match = { class = ".*" },

	suppress_event = "maximize",
})
-- suppressMaximizeRule:set_enabled(false)

hl.window_rule({
	-- Fix some dragging issues with XWayland
	name = "fix-xwayland-drags",
	match = {
		class = "^$",
		title = "^$",
		xwayland = true,
		float = true,
		fullscreen = false,
		pin = false,
	},

	no_focus = true,
})

for i = 1, 3, 1 do
	hl.workspace_rule({ workspace = tostring(i), persistent = true, monitor = "DP-1" })
end

hl.workspace_rule({
	workspace = "name:games",
	--	default_name = "games",
	layout = "scrolling",
	layout_opts = {
		direction = "right",
		fullscreen_on_one_column = true,
		column_width = 1.0,
		wrap_focus = true,
		wrap_swapcol = true,
	},
	persistent = false,
	on_created_empty = "gamescope -w 3840 -h 2160 -W 3840 -H 2160 -f --force-grab-cursor -r 144 -e -- steam -tenfoot",
})
hl.window_rule({ match = { title = "Steam" }, workspace = "name:games" })
hl.window_rule({ match = { title = "^Heroic.*$" }, workspace = "name:games" })
hl.window_rule({ match = { class = "gamescope" }, workspace = "name:games" })

hl.workspace_rule({
	workspace = "name:discord",
	layout = "scrolling",
	layout_opts = {
		direction = "right",
		fullscreen_on_one_column = true,
		column_width = 1.0,
		wrap_focus = true,
		wrap_swapcol = true,
	},
	persistent = false,
	monitor = "DP-1",
	on_created_empty = "discord",
})
hl.workspace_rule({ workspace = "special:magic", persistent = true })

hl.window_rule({ match = { title = "Discord" }, workspace = "name:discord" })
hl.window_rule({ match = { title = "Signal" }, workspace = "name:discord" })

-- Make all screens full width on scrolling
hl.window_rule({ match = { class = ".*" }, scrolling_width = 1.0 })
