require("modules.scripts.workspaces")

MainMod = "SUPER" -- Sets "Windows" key as main modifier

require("modules.keybinds.applications")
require("modules.keybinds.windows")
require("modules.keybinds.workspaces")
require("modules.keybinds.utility")

require("modules.systems.systems")

Bindings.CreateBindings(AppBinds)
Bindings.CreateBindings(WorkspaceBinds)
Bindings.CreateBindings(WindowBinds)
Bindings.CreateBindings(UtilityBinds)
