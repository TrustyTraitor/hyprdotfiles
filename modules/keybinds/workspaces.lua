-- Switch workspaces with MainMod + [0-9]
-- Move active window to a workspace with MainMod + SHIFT + [0-9]
for i = 1, 10 do
	local key = i % 10 -- 10 maps to key 0
	hl.bind(MainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
	hl.bind(MainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

-- Example special workspace (scratchpad)
hl.bind(MainMod .. " + S", hl.dsp.workspace.toggle_special("magic"))
hl.bind(MainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

hl.bind(MainMod .. " + D", ToggleWorkspace("name:discord"))
hl.bind(MainMod .. " + SHIFT + D", hl.dsp.window.move({ workspace = "name:discord" }))

hl.bind(MainMod .. " + G", ToggleWorkspace("name:games"))
hl.bind(MainMod .. " + SHIFT + G", hl.dsp.window.move({ workspace = "name:games" }))

hl.bind(MainMod .. " + ALT + G", hl.dsp.workspace.toggle_special("wowapps"))
hl.bind(MainMod .. " + SHIFT + ALT + G", hl.dsp.window.move({ workspace = "special:wowapps" }))
