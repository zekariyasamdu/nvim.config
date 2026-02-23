return {
	"roobert/tailwindcss-colorizer-cmp.nvim",
	-- optionally, override the default options:
	config = function()
		local tailwindcss_colorizer = require("tailwindcss-colorizer-cmp")
		tailwindcss_colorizer.setup({
			color_square_width = 2,
		})

		local format = tailwindcss_colorizer.formatter
		local cmp = require("cmp")
		cmp.setup({
			formatting = {
				format = format,
			},
		})
	end,
}
