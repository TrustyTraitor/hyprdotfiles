hl.bind(MainMod .. " + C", hl.dsp.window.close())

hl.bind(MainMod .. " + SHIFT + V", hl.dsp.window.fullscreen({ action = "toggle" }))
hl.bind(MainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))
--hl.bind(MainMod .. " + P", hl.dsp.window.pseudo())
hl.bind(MainMod .. " + J", hl.dsp.layout("togglesplit")) -- dwindle only

-- Move focus with MainMod + arrow keys
hl.bind(MainMod .. " + left", hl.dsp.focus({ direction = "left" }))
hl.bind(MainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(MainMod .. " + up", hl.dsp.focus({ direction = "up" }))
hl.bind(MainMod .. " + down", hl.dsp.focus({ direction = "down" }))

hl.bind(MainMod .. " + ALT + left", hl.dsp.window.move({ direction = "left" }))
hl.bind(MainMod .. " + ALT + right", hl.dsp.window.move({ direction = "right" }))
hl.bind(MainMod .. " + ALT + up", hl.dsp.window.move({ direction = "up" }))
hl.bind(MainMod .. " + ALT + down", hl.dsp.window.move({ direction = "down" }))

-- Scrolling workspace binds
hl.bind(MainMod .. " + mouse_down", ScrollingBind("focus r", "mouse_down"))
hl.bind(MainMod .. " + mouse_up", ScrollingBind("focus l", "mouse_up"))

-- Move/resize windows with MainMod + LMB/RMB and dragging
hl.bind(MainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(MainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })
