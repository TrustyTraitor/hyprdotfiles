require("modules.scripts.uwsm")

if not Check_UWSM() then
	hl.env("HYPRCURSOR_THEME", "catppuccin-mocha-dark-cursors")

	hl.env("HYPRCURSOR_SIZE", "24")
	hl.env("XCURSOR_SIZE", "24")

	hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
	hl.env("XDG_SESSION_TYPE", "wayland")
	hl.env("XDG_SESSION_DESKTOP", "Hyprland")

	hl.env("GDK_BACKEND", "wayland,x11,*")

	hl.env("LIBVA_DRIVER_NAME", "nvidia")
	hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")

	hl.env("MOZ_ENABLE_WAYLAND", "1")
end
