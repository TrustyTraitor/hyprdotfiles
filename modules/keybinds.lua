require("modules.scripts.workspaces")

MainMod = "SUPER" -- Sets "Windows" key as main modifier

require("modules.keybinds.applications")
require("modules.keybinds.windows")
require("modules.keybinds.workspaces")
require("modules.keybinds.utility")

local bindings = require("modules.systems.bindings")

bindings.CreateBindings(AppBinds)
bindings.CreateBindings(WorkspaceBinds)
bindings.CreateBindings(WindowBinds)
bindings.CreateBindings(UtilityBinds)
