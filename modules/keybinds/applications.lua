require("modules.scripts.uwsm")

---@type Bind[]
AppBinds = {
	{
		bind = "Q",
		action = Launch(Terminal),
	},
	{
		bind = "E",
		action = Launch(Terminal .. " fish -c " .. FileManager),
	},
	{
		bind = "R",
		action = Launch(Menu),
	},
	{
		bind = "F",
		action = Launch(Browser),
	},
	{
		bind = "mouse:275",
		action = hl.dsp.global("discord:discord-push-to-talk"),
		useLeader = false,
	},
}
