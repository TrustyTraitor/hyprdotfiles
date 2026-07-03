function OpenSteam()
	local current_workspace = hl.get_active_workspace(hl.get_active_monitor()).name

	if current_workspace == "games" then
		hl.dispatch(hl.dsp.focus({ workspace = "previous" }))
	else
		hl.dispatch(hl.dsp.focus({ workspace = "name:games" }))
	end
end
