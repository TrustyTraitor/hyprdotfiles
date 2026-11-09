local constants = require("modules.systems.constants")

---@type Bind[]
WindowBinds = {
	{ "C", constants.system.window.close },

	{ "SHIFT + V", constants.system.window.fullscreen },
	{ "V", constants.system.window.float },
	{ "J", constants.system.window.togglesplit }, -- dwindle only

	-- Move focus with MainMod + arrow keys
	{ "left", constants.system.window.move.left },
	{ "right", constants.system.window.move.right },
	{ "up", constants.system.window.move.up },
	{ "down", constants.system.window.move.up },

	{ "ALT + left", constants.system.window.focus.left },
	{ "ALT + right", constants.system.window.focus.right },
	{ "ALT + up", constants.system.window.focus.up },
	{ "ALT + down", constants.system.window.focus.down },

	-- Scrolling workspace binds
	{ "mouse_down", constants.system.window.focus.scrolling.right },
	{ "mouse_up", constants.system.window.focus.scrolling.left },

	-- Move/resize windows with MainMod + LMB/RMB and dragging
	{ "mouse:272", constants.system.window.move.mouse, { mouse = true } },
	{ "mouse:273", constants.system.window.resize.mouse, { mouse = true } },
}
