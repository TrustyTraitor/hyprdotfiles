function ToggleWorkspace(workspace_id)
	return function()
		local current_workspace = hl.get_active_workspace(hl.get_active_monitor()).name

		if current_workspace == workspace_id then
			hl.dispatch(hl.dsp.focus({ workspace = "previous" }))
		else
			hl.dispatch(hl.dsp.focus({ workspace = workspace_id }))
		end
	end
end
