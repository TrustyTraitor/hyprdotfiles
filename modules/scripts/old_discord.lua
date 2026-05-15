function OpenDiscord()
	local is_discord_running = io.popen("pgrep -l Discord | wc -l"):read("n")
	local current_workspace = hl.get_active_workspace(hl.get_active_monitor()).name

	if current_workspace == "discord" then
		hl.dispatch(hl.dsp.focus({ workspace = "previous" }))
	elseif is_discord_running > 0 then
		hl.dispatch(hl.dsp.focus({ workspace = "name:discord" }))
	else
		hl.dispatch(hl.dsp.focus({ workspace = "name:discord" }))
		hl.dispatch(hl.dsp.exec_cmd("discord"))
	end
end
