---@type Bind[]
WorkspaceBinds = {
	{ "S", hl.dsp.workspace.toggle_special("magic") },
	{ "SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }) },
	{ "D", ToggleWorkspace("name:discord") },
	{ "SHIFT + D", hl.dsp.window.move({ workspace = "name:discord" }) },
	{ "G", ToggleWorkspace("name:games") },
	{ "SHIFT + G", hl.dsp.window.move({ workspace = "name:games" }) },
	{ "ALT + G", hl.dsp.workspace.toggle_special("wowapps") },
	{ "SHIFT + ALT + G", hl.dsp.window.move({ workspace = "special:wowapps" }) },
}

for i = 1, 10 do
	local key = i % 10 -- 10 maps to key 0
	table.insert(WorkspaceBinds, { key, hl.dsp.focus({ workspace = i }) })
	table.insert(WorkspaceBinds, { "SHIFT + " .. key, hl.dsp.window.move({ workspace = i }) })
end
