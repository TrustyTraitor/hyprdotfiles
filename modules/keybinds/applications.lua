-- Mouse keybinds dont seem to work correctly when the keybind requires holding. Will need to investigate further another time
-- This keybind did work when using a keyboard key, just not when using a mouse key
--hl.bind("mouse:274", hl.dsp.pass({ window = "title:^.*(Discord).*$" }, { mouse = true }))

require("modules.scripts.uwsm")

hl.bind(MainMod .. " + Q", Launch(Terminal))
hl.bind(MainMod .. " + E", Launch(Terminal .. " fish -c " .. FileManager))
hl.bind(MainMod .. " + R", Launch(Menu))
hl.bind(MainMod .. " + F", Launch(Browser))

hl.bind("mouse:275", hl.dsp.global("discord:discord-push-to-talk"))
