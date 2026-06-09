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

for i = 1, 5, 1 do
	hl.workspace_rule({ workspace = tostring(i), persistent = true, monitor = "DP-1" })
end

hl.workspace_rule({
	workspace = "name:discord",
	default_name = "discord",
	persistent = false,
	monitor = "DP-1",
	on_created_empty = "discord",
})
hl.workspace_rule({ workspace = "special:magic", persistent = true })

hl.window_rule({ match = { title = "Discord" }, workspace = "name:discord" })
