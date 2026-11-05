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
	layout = "scrolling",
	layout_opts = {
		direction = "right",
		fullscreen_on_one_column = true,
		column_width = 1.0,
		wrap_focus = true,
		wrap_swapcol = true,
	},
	persistent = false,
})
hl.window_rule({ match = { title = "Steam" }, workspace = "name:games" })
hl.window_rule({ match = { title = "^Heroic.*$" }, workspace = "name:games" })
hl.window_rule({ match = { class = "gamescope" }, workspace = "name:games" })
hl.window_rule({ match = { tag = "proton-game" }, workspace = "name:games" })

hl.workspace_rule({
	workspace = "special:wowapps",
	layout = "dwindle",
	persistent = false,
})
hl.window_rule({ match = { class = "curseforge" }, workspace = "special:wowapps" })
hl.window_rule({ match = { class = "Archon App" }, workspace = "special:wowapps" })
hl.window_rule({ match = { class = "io.raider.client" }, workspace = "special:wowapps" })

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
})
hl.window_rule({ match = { title = "Discord" }, workspace = "name:discord" })
hl.window_rule({ match = { title = "Signal" }, workspace = "name:discord" })

hl.workspace_rule({ workspace = "special:magic", persistent = true, monitor = "DP-1" })

OpenOnEmpty({
	["games"] = { { "uwsm app -- steam" } },
	["discord"] = { { "uwsm app -- discord", {} } },
	["special:wowapps"] = {
		{ "uwsm app -- RaiderIO.desktop" },
		{ "uwsm app -- Curseforge.desktop" },
		{ "uwsm app -- Archon.desktop" },
	},
})

-- Make all screens full width on scrolling
hl.window_rule({ match = { class = ".*" }, scrolling_width = 1.0 })
