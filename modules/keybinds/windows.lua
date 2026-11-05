---@type Bind[]
WindowBinds = {
	{ "C", hl.dsp.window.close() },

	{ "SHIFT + V", hl.dsp.window.fullscreen({ action = "toggle" }) },
	{ "V", hl.dsp.window.float({ action = "toggle" }) },
	{ "J", hl.dsp.layout("togglesplit") }, -- dwindle only

	-- Move focus with MainMod + arrow keys
	{ "left", hl.dsp.focus({ direction = "left" }) },
	{ "right", hl.dsp.focus({ direction = "right" }) },
	{ "up", hl.dsp.focus({ direction = "up" }) },
	{ "down", hl.dsp.focus({ direction = "down" }) },

	{ "ALT + left", hl.dsp.window.move({ direction = "left" }) },
	{ "ALT + right", hl.dsp.window.move({ direction = "right" }) },
	{ "ALT + up", hl.dsp.window.move({ direction = "up" }) },
	{ "ALT + down", hl.dsp.window.move({ direction = "down" }) },

	-- Scrolling workspace binds
	{ "mouse_down", ScrollingBind("focus r", "mouse_down") },
	{ "mouse_up", ScrollingBind("focus l", "mouse_up") },

	-- Move/resize windows with MainMod + LMB/RMB and dragging
	{ "mouse:272", hl.dsp.window.drag(), { mouse = true } },
	{ "mouse:273", hl.dsp.window.resize(), { mouse = true } },
}
