function ToggleWorkspace(workspace_id)
	local _wrk_id = workspace_id
	if type(workspace_id) == "string" and string.find(workspace_id, "name:") then
		_wrk_id = string.sub(workspace_id, 6)
	elseif type(workspace_id) == "number" then
		_wrk_id = tostring(workspace_id)
	end

	return function()
		local current_workspace = hl.get_active_workspace(hl.get_active_monitor()).name

		if current_workspace == _wrk_id then
			hl.dispatch(hl.dsp.focus({ workspace = "previous" }))
		else
			hl.dispatch(hl.dsp.focus({ workspace = workspace_id }))
		end
	end
end

function ScrollingBind(command, scroll_dir)
	return function()
		if hl.get_active_workspace().tiled_layout == "scrolling" then
			hl.dispatch(hl.dsp.layout(command))
		else
			if scroll_dir == "mouse_down" then
				hl.dispatch(hl.dsp.focus({ workspace = "e+1" }))
			else
				hl.dispatch(hl.dsp.focus({ workspace = "e-1" }))
			end
		end
	end
end

---@param apps { [string]: [string, table][] }
function OpenOnEmpty(apps)
	hl.on("workspace.created", function(workspace)
		if not workspace.is_empty then
			return
		end
		local programs = apps[workspace.name]
		if programs == nil then
			return
		end

		for _, v in pairs(programs) do
			local app, rules = table.unpack(v)
			hl.exec_cmd(app, rules)
		end
	end)
end
