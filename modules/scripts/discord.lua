-- Discord is automatically opened if the discord workspace is empty when switching to it.
-- -- This behaviour is configured in workspaces.lua
-- This script now only moves to-and-from the discord.
function OpenDiscord()
	local current_workspace = hl.get_active_workspace(hl.get_active_monitor()).name

	if current_workspace == "discord" then
		hl.dispatch(hl.dsp.focus({ workspace = "previous" }))
	else
		hl.dispatch(hl.dsp.focus({ workspace = "name:discord" }))
	end
end
