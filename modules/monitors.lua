hl.monitor({ output = "", mode = "preferred", position = "auto", scale = 1 })

hl.monitor({
	output = "DP-1",
	mode = "3840x2160@240",
	position = "auto",
	scale = "1.5",
	supports_hdr = 1,
	cm = "srgb",
	bitdepth = 10,
})

hl.config({
	xwayland = {
		force_zero_scaling = true,
	},
})
