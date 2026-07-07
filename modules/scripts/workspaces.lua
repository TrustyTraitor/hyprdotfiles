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
