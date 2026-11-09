require("modules.scripts.uwsm")
local constants = require("modules.systems.constants")

---@type Bind[]
AppBinds = {
	{
		bind = "Q",
		action = constants.applications.core.terminal,
	},
	{
		bind = "E",
		action = constants.applications.core.file_manager,
	},
	{
		bind = "R",
		action = constants.applications.core.menu,
	},
	{
		bind = "F",
		action = constants.applications.core.browser,
	},
	{
		bind = "mouse:275",
		action = constants.applications.social.discord.push_to_talk,
		useLeader = false,
	},
}
